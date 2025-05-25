const userService = require("@/service/user.service");

exports.index = async (req, res) => {
  const page = req.query.page ?? 1;
  const { items, total } = await userService.getAll(page, 20);
  res.render("admin/users/index", {
    users: items,
    total,
  });
};

exports.show = async (req, res) => {
  const user = await userService.getById(req.params.id);
  res.render("admin/users/show", {
    user,
  });
};

exports.edit = async (req, res) => {
  const user = await userService.getById(req.params.id);
  res.render("admin/users/edit", { user });
};

exports.create = async (req, res) => {
  res.render("admin/users/create");
};
