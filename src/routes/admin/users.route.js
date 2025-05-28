const express = require("express");
const usersController = require("@/controllers/admin/users.controller");
const userValidator = require("@/validators/admin/users.validator");
const upload = require("@/middlewares/admin/upload");
const router = express.Router();

router.get("/", usersController.index);
router.post("/", userValidator.createUser, usersController.store);
router.get("/create", usersController.create);

router.get("/edit/:id", usersController.edit);
router.put(
  "/:id",
  upload.single("avatar"),
  userValidator.updateUser,
  usersController.update
);
router.delete("/:id", usersController.delete);
router.get("/:id", usersController.show);

module.exports = router;
