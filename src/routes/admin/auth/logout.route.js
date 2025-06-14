const express = require("express");
const router = express.Router();
const logoutController = require("@/controllers/admin/auth.controller");

router.delete("/", logoutController.logout);

module.exports = router;
