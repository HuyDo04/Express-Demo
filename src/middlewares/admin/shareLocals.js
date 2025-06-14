const userModel = require("@/models/user.model");
async function shareLocals(req, res, next) {
  res.locals.auth = null;

  const userId = req.session.userId;

  if (userId) {
    const user = await userModel.findById(userId);

    if (user) {
      res.locals.auth = user;
    }
  }
  next();
}

module.exports = shareLocals;
