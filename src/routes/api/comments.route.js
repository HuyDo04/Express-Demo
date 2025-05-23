const express = require("express");
const router = express.Router();

const commentsController = require("@/controllers/api/comments.controller");

router.get("/", commentsController.getAllComments);

router.get("/:id", commentsController.getCommentById);

router.post("/", commentsController.createComments);

router.put("/:id", commentsController.updateComments);

router.delete("/:id", commentsController.deleteComment);

module.exports = router;
