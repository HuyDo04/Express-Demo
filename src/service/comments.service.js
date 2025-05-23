const { readDb, writeDb } = require("@/utils/db");

const RESOURCE = "comments";

const getCommentsByPostId = async (postId) => {
  const comments = await readDb(RESOURCE);
  console.log(comments);

  return comments.filter((comment) => comment.post_id === +postId);
};

const commentService = {
  getCommentsByPostId,
};

module.exports = commentService;
