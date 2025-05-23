const postsController = require("../../controllers/api/posts.controller");
const express = require("express");
const postsValidator = require("../../validators/posts.validator");

const router = express.Router();

router.get("/", postsController.getAllPosts);

router.get("/:id", postsController.getPostById);

router.post("/", postsValidator.createPost, postsController.createPost);

router.put("/:id", postsValidator.updatePost, postsController.putPost);

router.delete("/:id", postsController.deletePost);

// post comments
router.get("/:id/comments", postsController.getPostComments);

module.exports = router;
