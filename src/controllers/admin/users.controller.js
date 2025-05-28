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
  res.render("admin/users/create", {
    old: {},
    errors: {},
  });
};

exports.store = async (req, res) => {
  const { confirm_password, ...body } = req.body;

  await userService.create(body);

  res.redirect("/admin/users");
};

exports.update = async (req, res) => {
  const { id } = req.params;
  const { confirm_password, ...body } = req.body;
  const user = await userService.getById(req.params.id);

  if (req.file) {
    body.avatar = "/uploads/" + req.file.filename;
  } else {
    body.avatar = user.avatar;
  }

  await userService.update(id, body);
  res.redirect(`/admin/users/${id}`);
};

exports.delete = async (req, res) => {
  const { id } = req.params;

  await userService.remove(id);
  res.redirect("/admin/users");
};
