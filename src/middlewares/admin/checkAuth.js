function checkAuth(req, res, next) {
    const isAuthReqires = !["/register", "/login"].includes(req.path);
    if(!res.locals.auth && isAuthReqires) {
       return res.redirect("/admin/login")
    }

    if(res.locals.auth && !isAuthReqires) {
        return res.redirect("/admin/users")
    }
    next();
}

module.exports = checkAuth