const path = require("path")
const  transporter  = require("@/configs/mailer");
const userService = require("@/service/user.service");
const loadEmail = require("@/utils/loadEmail");
const { response } = require("@/utils/response");
const throw404 = require("@/utils/throw404");
const userId = 117;
exports.getEmailImage = async (req, res) => {
  const imgPath = path.join(__dirname, "../../../",`public/img/logo.png`)
  await userService.update(userId, {
    email_seen_at: new Date()
  })
  res.sendFile(imgPath)
}

exports.getList = async (req, res) => {
  const data = {
    token: "abcxyz"
  }
  const template = await loadEmail("auth/verification", data)
  const info =  await transporter.sendMail({
    from: `"F8" <dovhf8193@fullstack.edu.vn>`,
    subject: "Test email",
    to: "huydo041203@gmail.com",
    html: template
  })
  
  //fake
  await userService.update(userId, {
    email_sent_at: new Date()
  })

  const result = await userService.getAll(req.page, req.limit);

  res.paginate(result);
};

exports.getOne = async (req, res) => {
  response.success(res, 200, req.user);
};

exports.remove = async (req, res) => {
  await userService.remove(req.user.id);
  response.success(res, 204);
};

exports.update = async (req, res) => {
  const updated = await userService.update(req.user.id, req.body);
  response.success(res, 200, updated);
};

exports.create = async (req, res) => {
  const user = await userService.create(req.body);
  response.success(res, 201, user);
};
