const forgotPasswordController = require("@/controllers/admin/auth.controller");
const express = require("express");
const router = express.Router();

router.get("/", forgotPasswordController.forgotPassword);

module.exports = router;
