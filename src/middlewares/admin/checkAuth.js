function checkAuth(req, res, next) {
  const publicRoutes = [
    "/admin/register",
    "/admin/login",
    "/admin/verify-email",
    "/admin/forgotPassword",
    "/admin/forgotPassword/verifyOtp",
    "/admin/forgotPassword/resetPassword",
    "/admin/resetPassword",
    "/admin/logout"
  ];

  const isPublicRoute = publicRoutes.some(path => req.originalUrl.startsWith(path));
  const isAuthRequired = !isPublicRoute;
  const user = res.locals.auth;

  if (!user && isAuthRequired) {
    return res.redirect("/admin/login");
  }

  if (user && !user.verified_at && isAuthRequired) {
    res.setFlash({
      type: "error",
      message: "Vui lòng xác minh địa chỉ email trước"
    });
    return res.redirect("/verify-email");
  }

  if (user && user.verified_at && ["/admin/login", "/admin/register", "/admin/verify-email"].includes(req.originalUrl)) {
    return res.redirect("/admin/users");
  }

  next();
}

module.exports = checkAuth;
