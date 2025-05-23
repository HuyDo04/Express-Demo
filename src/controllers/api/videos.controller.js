const videoService = require("@/service/video.service");

exports.getVideos = async (req, res) => {
  const videos = await videoService.getAll();
  res.json(videos);
};

exports.getVideo = async (req, res) => {
  const id = req.params.id;
  const video = await videoService.getById(id);
  res.json(video);
};

exports.createVideo = async (req, res) => {
  const data = req.body;
  const newVideo = await videoService.create(data);
  res.status(201).json(newVideo);
};

exports.updateVideo = async (req, res) => {
  const id = req.params.id;
  const data = req.body;
  const updated = await videoService.update(id, data);
  res.json(updated);
};

exports.deleteVideo = async (req, res) => {
  const id = req.params.id;
  const deleted = await videoService.remove(id);
  res.json({ success: deleted });
};
