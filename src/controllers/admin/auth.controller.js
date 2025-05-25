exports.login = async (req, res) => {
  res.render("admin/auth/login/index", {
    layout: "admin/layouts/auth-layout",
  });
};

exports.register = async (req, res) => {
  res.render("admin/auth/register/index", {
    layout: "admin/layouts/auth-layout",
  });
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
