const commentService = require("@/service/comments.service");
const postService = require("@/service/posts.service");
const { response } = require("@/utils/response");
const throw404 = require("@/utils/throw404");

exports.getAllPosts = async (req, res) => {
  const posts = await postService.getAllPosts();
  const { q } = req.query;
  if (q) {
    const key = q.toLowerCase();
    const result = posts.filter((post) =>
      post.title.toLowerCase().includes(key)
    );
    return response.success(res, 200, result);
  }
  response.success(res, 200, posts);
};

exports.getPostById = async (req, res) => {
  const post = await postService.getPostById(req.params.id);

  if (!post) throw404();

  response.success(res, 200, post);
};

exports.createPost = async (req, res) => {
  const posts = await postService.createPost(req.body);

  response.success(res, 201, posts);
};

exports.putPost = async (req, res) => {
  const post = await postService.putPost(req.params.id, req.body);

  if (!post) throw404();

  response.success(res, 200, post);
};

exports.deletePost = async (req, res) => {
  const post = await postService.deletePost(req.params.id);

  if (!post) throw404();

  response.success(res, 204, post);
};

exports.getPostComments = async (req, res) => {
  const post = await postService.getPostById(req.params.id);
  console.log(post);

  if (!post) throw404();
  const comments = await commentService.getCommentsByPostId(post.id);
  response.success(res, 200, comments);
};
