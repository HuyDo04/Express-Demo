const usersController = require("@/controllers/api/user.controller");
const userService = require("@/service/user.service");
const attachResourceLoader = require("@/utils/attachResourceLoader");
const throw404 = require("@/utils/throw404");
const express = require("express");

const router = express.Router();

attachResourceLoader(router, ["user"]);

router.get("/", usersController.getList);
router.get("/:id/email-image.jpg", usersController.getEmailImage);
router.get("/:user", usersController.getOne);
router.delete("/:user", usersController.remove);
router.put("/:user", usersController.update);
router.post("/", usersController.create);

module.exports = router;
