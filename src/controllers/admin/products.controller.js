exports.index = async (req, res) => {
  res.render("admin/products/index");
};

exports.create = async (req, res) => {
  res.render("admin/products/create");
};

exports.show = async (req, res) => {
  res.render("admin/products/show");
};

exports.edit = async (req, res) => {
  res.render("admin/products/edit");
};
