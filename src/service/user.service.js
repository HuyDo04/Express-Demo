const userModel = require("@/models/user.model");

class UserService {
  async getAll(page, limit) {
    const items = await userModel.findAll(page, limit);

    const total = await userModel.count();
    return { items, total };
  }

  async getCountNewUsers() {
    const items = await userModel.findCountNewUsers()
    return items;
  }

  async count() {
    const total = await userModel.count();
    return total;
  }

  async getById(id) {
    const user = await userModel.findById(id);
    return user;
  }

  async getByEmail (email) {
    const user = await userModel.findByEmail(email);
    return user;
  }  

  async remove(id) {
    return await userModel.remove(id);
  }

  async update(id, data) {
    return await userModel.update(id, data);
  }

  async create(data) {
    return await userModel.create(data);
  }
}

const userService = new UserService();

module.exports = userService;
