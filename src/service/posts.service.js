const postModel = require("@/models/post.model");

class PostsService {
  async getAll() {
    const items = await postModel.findAll();
    console.log("item", items);

    return { items };
  }

  async getById(id) {
    const user = await postModel.findById(id);
    return user;
  }

  async remove(id) {
    return await postModel.remove(id);
  }

  async update(id, data) {
    return await postModel.update(id, data);
  }

  async create(data) {
    return await postModel.create(data);
  }
}

const postService = new PostsService();

module.exports = postService;
