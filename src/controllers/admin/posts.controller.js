const postService = require("@/service/posts.service");

exports.index = async (req, res) => {
  const { items } = await postService.getAll();
  res.render("admin/posts/index", {
    posts: items,
  });
};
