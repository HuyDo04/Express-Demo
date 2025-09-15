const changePasswordController = require("@/controllers/admin/auth.controller");
const express = require("express");
const router = express.Router();

router.get("/", changePasswordController.showChangePassword);
router.post("/", changePasswordController.changePassword);

module.exports = router;
