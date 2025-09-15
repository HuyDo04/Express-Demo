const path = require("path")
const  transporter  = require("@/configs/mailer");
const userService = require("@/service/user.service");
const loadEmail = require("@/utils/loadEmail");
const { response } = require("@/utils/response");
const throw404 = require("@/utils/throw404");
const queue = require("@/utils/queue");
const scheduler = require("@/utils/scheduler")

const cron = require("node-cron")

const userId = 141;
exports.getEmailImage = async (req, res) => {
  const imgPath = path.join(__dirname, "../../../",`public/img/logo.png`)
  await userService.update(userId, {
    email_seen_at: new Date()
  })
  res.sendFile(imgPath)
}

exports.getList = async (req, res) => {
  queue.dispatch("sendVerifyEmailJob", {userId})

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
