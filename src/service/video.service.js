const videoModel = require("@/models/videos.model");

class VideoService {
  async getAll() {
    return await videoModel.getAllVideos();
  }

  async getById(id) {
    return await videoModel.getVideoById(id);
  }

  async create(data) {
    return await videoModel.createVideo(data);
  }

  async update(id, data) {
    return await videoModel.updateVideo(id, data);
  }

  async remove(id) {
    return await videoModel.deleteVideo(id);
  }
}

module.exports = new VideoService();
