const Post = require("@/models/post.model");
const postModel = require("@/models/post.model");
const { Op, where } = require("sequelize");

class PostsService {
  async getAll() {
    const items = await Post.findAll();
    return { items };
  }

  async getById(id) {
    const user = await Post.findOne({
      where: {
        id
      }
    });
    return user;
  }

  async remove(id) {
    return await Post.destroy(
     {
      where: {
        id
      }
     }
    );
  }

  async update(id, data) {
    return await Post.update(data, {
      where: {
        id
      }
    });
  }

  async create(data) {
    return await Post.create({
      content: data.content,
      title: data.title,
      slug: data.slug,
      description: data.descripton,
    });
  }
}

const postService = new PostsService();

module.exports = postService;
