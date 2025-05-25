const express = require("express");
const router = express.Router();
const commentsConotroller = require("@/controllers/admin/comments.controller");

router.get("/", commentsConotroller.index);

router.get("/edit", commentsConotroller.edit);

router.get("/:id", commentsConotroller.show);

module.exports = router;
