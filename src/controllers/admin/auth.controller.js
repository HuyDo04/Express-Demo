const userService = require("@/service/user.service");
const userModel = require("@/models/user.model");
const md5 = require("md5");

// handle login
exports.showLoginForm = async (req, res) => {
  res.render("admin/auth/login/index", {
    layout: "admin/layouts/auth-layout",
  });
};

exports.login = async (req, res) => {
  const email = req.body.email;
  const password = req.body.password;

  const user = await userModel.findByEmailAndPassword(email, password);
  console.log(user);

  if (user) {
    req.session.set("userId", user.id);
    res.redirect("/admin/users");
  }
};

// handle register
exports.showRegisterForm = async (req, res) => {
  res.render("admin/auth/register/index", {
    layout: "admin/layouts/auth-layout",
  });
};

exports.register = async (req, res) => {
  await userService.create({
    email: req.body.email,
    password: md5(req.body.password),
  });

  res.redirect("/admin/login");
};

exports.forgotPassword = async (req, res) => {
  res.render("admin/auth/forgotPassword/index", {
    layout: "admin/layouts/auth-layout",
  });
};

exports.resetPassword = async (req, res) => {
  res.render("admin/auth/resetPassword/index", {
    layout: "admin/layouts/auth-layout",
  });
};
