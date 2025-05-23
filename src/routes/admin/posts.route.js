const express = require("express");
const postsController = require("@/controllers/admin/posts.controller");

const router = express.Router();

router.get("/", postsController.index);

module.exports = router;
