const queuesModel = require("@/models/queue.model");

class QueuesService {
  async getAll(page, limit) {
    const items = await queuesModel.findAll(page, limit);
    return items;
  }

  async getPendingJobs() {
    const items = await queuesModel.findPendingJobs();
    return items;
  }

  async getRejectJobs () {
    const items = await queuesModel.findRejectJobs();
    return items
  }

  async count() {
    const total = await queuesModel.count();
    return total;
  }

  async getById(id) {
    const user = await queuesModel.findById(id);
    return user;
  }

  async remove(id) {
    return await queuesModel.remove(id);
  }

  async update(id, data) {
    return await queuesModel.update(id, data);
  }

  async create(data) {
    return await queuesModel.create(data);
  }
}

const queuesService = new QueuesService();

module.exports = queuesService;
