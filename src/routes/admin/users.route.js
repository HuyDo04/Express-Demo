const express = require("express");
const usersController = require("@/controllers/admin/users.controller");

const router = express.Router();

router.get("/", usersController.index);
router.get("/create", usersController.create);
router.get("/edit/:id", usersController.edit);
router.get("/:id", usersController.show);

module.exports = router;
