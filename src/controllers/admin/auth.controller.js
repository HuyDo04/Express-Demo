const userService = require("@/service/user.service");
const userModel = require("@/models/user.model");
const md5 = require("md5");
const { createToken, verifyToken } = require("@/utils/jwt");
const transporter = require("@/configs/mailer");

// show login form
exports.showLoginForm = async (req, res) => {
  res.render("admin/auth/login/index", {
    layout: "admin/layouts/auth-layout",
  });
};

exports.login = async (req, res) => {
  const { email, password } = req.body;
  const user = await userModel.findByEmailAndPassword(email, password);

  if (user) {
    req.session.userId = user.id;
    return res.redirect("/admin/users");
  }

  res.setFlash({
    type: "errors",
    message: "Email hoặc mật khẩu không đúng."
  });
  res.redirect("/admin/login");
};

// show register form
exports.showRegisterForm = async (req, res) => {
  res.render("admin/auth/register/index", {
    layout: "admin/layouts/auth-layout",
  });
};

exports.register = async (req, res) => {
  const user = await userService.create({
    email: req.body.email,
    password: md5(req.body.password),
  });

  const token = createToken(
    { userId: user.id },
    { expiresIn: 60 * 60 * 12 }
  );

  const verifyUrl = `${req.protocol}://${req.host}/admin/verify-email?token=${token}`;

  await transporter.sendMail({
    from: "dovhf8193@fullstack.edu.vn",
    to: user.email,
    subject: "Xác minh tài khoản",
    html: `
      <div>
        <p>Nhấn vào đây để xác thực:</p>
        <p><a href="${verifyUrl}">Xác minh tài khoản</a></p>
      </div>
    `
  });

  res.setFlash({
    type: "success",
    message: `Chúng tôi đã gửi email xác thực tới ${user.email}.`
  });

  res.redirect("/admin/login");
};

exports.verifyEmail = async (req, res) => {
  const token = req.query.token;
  const verify = verifyToken(token);

  if (verify.success) {
    const userId = verify.data.userId;
    const user = await userService.getById(userId);

    if (user.verified_at) {
      res.setFlash({
        type: "info",
        message: "Tài khoản đã được xác minh."
      });
      return res.redirect("/admin/login");
    }

    await userService.update(userId, { verified_at: new Date() });

    res.setFlash({
      type: "success",
      message: "Xác minh tài khoản thành công."
    });
    return res.redirect("/admin/login");
  }

  res.setFlash({
    type: "errors",
    message: "Liên kết xác minh không hợp lệ hoặc đã hết hạn."
  });
  res.redirect("/admin/login");
};

// show forgot password form
exports.showForgotPassword = async (req, res) => {
  res.render("admin/auth/forgotPassword/index", {
    layout: "admin/layouts/auth-layout",
    message: null
  });
};

exports.forgotPassword = async (req, res) => {
  const { email } = req.body;
  const user = await userService.getByEmail(email);

  if (!user) {
    res.setFlash({
      type: "errors",
      message: "Email không tồn tại."
    });
    return res.redirect("/admin/forgotPassword");
  }

  const otp = Math.floor(100000 + Math.random() * 900000).toString();
  const expiresAt = new Date(Date.now() + 10 * 60 * 1000);

  await userService.update(user.id, {
    reset_password_otp: otp,
    reset_password_otp_expires_at: expiresAt
  });

  await transporter.sendMail({
    from: "dovhf8193@fullstack.edu.vn",
    to: user.email,
    subject: "Reset Password",
    html: `
      <h2>${otp} là mã xác thực đặt lại mật khẩu của bạn.</h2>
      <p>Mã có hiệu lực trong 10 phút.</p>
    `
  });

  res.redirect(`/admin/forgotPassword/verifyOtp?email=${user.email}`);
};

exports.showVerifyOtp = async (req, res) => {
  const { email } = req.query;
  res.render("admin/auth/verifyOtp/index", {
    layout: "admin/layouts/auth-layout",
    email,
    message: null
  });
};

exports.verifyOtp = async (req, res) => {
  const { otp, email } = req.body;
  const user = await userService.getByEmail(email);

  if (!user) {
    res.setFlash({ type: "errors", message: "Tài khoản không tồn tại." });
    return res.redirect("/admin/forgotPassword");
  }

  if (user.reset_password_otp !== otp) {
    res.setFlash({ type: "errors", message: "Mã OTP không đúng." });
    return res.redirect(`/admin/forgotPassword/verifyOtp?email=${email}`);
  }

  if (new Date(user.reset_password_otp_expires_at) < new Date()) {
    res.setFlash({ type: "errors", message: "Mã OTP đã hết hạn." });
    return res.redirect("/admin/forgotPassword");
  }

  res.redirect(`/admin/forgotPassword/resetPassword?email=${email}`);
};

exports.showResetPassword = async (req, res) => {
  const { email } = req.query;
  res.render("admin/auth/resetPassword/index", {
    layout: "admin/layouts/auth-layout",
    email,
    message: null
  });
};

exports.resetPassword = async (req, res) => {
  const { email, password, confirmPassword } = req.body;

  if (password !== confirmPassword) {
    res.setFlash({ type: "errors", message: "Mật khẩu không khớp." });
    return res.redirect(`/admin/forgotPassword/resetPassword?email=${email}`);
  }

  const user = await userService.getByEmail(email);

  await userService.update(user.id, {
    password: md5(password),
    reset_password_otp: null,
    reset_password_otp_expires_at: null
  });

  res.setFlash({
    type: "success",
    message: "Đặt lại mật khẩu thành công. Vui lòng đăng nhập."
  });

  res.redirect("/admin/login");
};

// show change password form
exports.showChangePassword = async (req, res) => {
  const userId = req.session.userId

  // Nếu URL chưa có userId, redirect thêm vào
  if (!req.query.userId) {
    return res.redirect(`/admin/changePassword?userId=${userId}`)
  }

  const user = await userService.getById(userId)

  res.render("admin/auth/changePassword/index", {
    layout: "admin/layouts/auth-layout",
    user,
    message: null,
  })
}

exports.changePassword = async (req, res) => {
  console.log("Test changePassword");
  
  const userId = req.session.userId;
console.log("Userid", userId);

  const {currentPassword, newPassword, confirmPassword} = req.body;

  const user = await userService.getById(userId);
  
  if(md5(currentPassword) !== user.password) {
    res.setFlash({
      type: "errors",
      message: "Mật khẩu hiện tại không chính xác.",
    })
    return res.redirect(`/admin/changePassword?userId=${userId}`)
  }


  if(newPassword !== confirmPassword) {
    res.setFlash({
      type: "errors",
      message: "Mật khẩu mới và mật khẩu xác nhận không khớp.",
    })

    return res.redirect(`/admin/changePassword?userId=${userId}`)
  }

  if(md5(newPassword) === user.password) {
    res.setFlash({
      type: "errors",
      message: "Không được nhập giống mật khẩu cũ.",
    })

    return res.redirect(`/admin/changePassword?userId=${userId}`)
  }

  await userService.update(userId,{
    password: md5(newPassword)
  })

  await transporter.sendMail({
    from: "dovhf8193@fullstack.edu.vn",
    to: user.email,
    subject: "Đổi mật khẩu thành công",
    html: `
      <h2>Bạn đã đổi mật khẩu thành công.</h2>
      <p>Nếu không phải bạn thực hiện, vui lòng liên hệ ngay với quản trị viên.</p>
    `,
  });

  res.setFlash({
    type: "success",
    message: "Đổi mật khẩu thành công.",
  });

  res.redirect("/admin/users");
}

exports.logout = async (req, res) => {
  delete req.session.userId;
  res.redirect("/admin/login");
};
