const Post = require("@/models/post.model");
const postModel = require("@/models/post.model");

class PostsService {
  async getAll() {
    const items = await Post.findAll({
      where :{
        id: 6
      } 
    }
    );
    console.log("item", items);
    return { items };
  }

  async getById(id) {
    const user = await Post.findOne(id);
    return user;
  }

  async remove(id) {
    return await Post.destroy(id);
  }

  async update(id, data) {
    return await Post.update(id, data);
  }

  async create(data) {
    return await Post.create(data);
  }
}

const postService = new PostsService();

module.exports = postService;
