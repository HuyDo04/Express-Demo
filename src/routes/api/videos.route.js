const express = require("express");
const videosController = require("@/controllers/api/videos.controller");
const router = express.Router();

router.get("/", videosController.getVideos);

router.get("/:id", videosController.getVideo);

router.post("/", videosController.createVideo);

router.put("/:id", videosController.updateVideo);

router.patch("/:id", videosController.updateVideo);

router.delete("/:id", videosController.deleteVideo);

module.exports = router;
