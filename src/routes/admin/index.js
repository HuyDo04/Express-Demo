const express = require("express");
const userRouter = require("./users.route");
const postRouter = require("./posts.route");
const categoriesRouter = require("./categories.route");
const productsRouter = require("./products.route");
const commentsRouter = require("./comments.route");
const settingsRouter = require("./settings.route");
const analyticsRouter = require("./analytics.route");
const topicsRouter = require("./topics.route");
const accountSettingsRouter = require("./accountSettings.route");
const loginRouter = require("./auth/login.route");
const registerRouter = require("./auth/register.route");
const verifyEmailRouter = require("./auth/verify-email.route");
const forgotPasswordRouter = require("./auth/forgotPassword.route");
const logoutRouter = require("./auth/logout.route");
const changPasswordRouter = require("./auth/changPassword.route")

const router = express.Router();
router.use("/users", userRouter);
router.use("/posts", postRouter);
router.use("/categories", categoriesRouter);
router.use("/products", productsRouter);
router.use("/comments", commentsRouter);
router.use("/analytics", analyticsRouter);
router.use("/settings", settingsRouter);
router.use("/topics", topicsRouter);
router.use("/accountsettings", accountSettingsRouter);
router.use("/login", loginRouter);
router.use("/register", registerRouter);
router.use("/verify-email", verifyEmailRouter);
router.use("/forgotPassword", forgotPasswordRouter);
router.use("/changePassword", changPasswordRouter)
router.use("/logout",logoutRouter)

module.exports = router;
