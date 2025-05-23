const userService = require("@/service/user.service");
const { response } = require("@/utils/response");
const throw404 = require("@/utils/throw404");

exports.getList = async (req, res) => {
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
