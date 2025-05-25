const resetPasswordController = require("@/controllers/admin/auth.controller");
const express = require("express");
const router = express.Router();

router.get("/", resetPasswordController.resetPassword);

module.exports = router;
