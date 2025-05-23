const express = require("express");
const postRouter = require("./post.route");
const authRouter = require("./auth.route");
const commentsRouter = require("./comments.route");
const usersRouter = require("./users.route");
const videosRouter = require("./videos.route");

const router = express.Router();
router.use("/posts", postRouter);
router.use("/auth", authRouter);
router.use("/comments", commentsRouter);
router.use("/users", usersRouter);
router.use("/videos", videosRouter);

module.exports = router;
