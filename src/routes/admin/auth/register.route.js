const registerController = require("@/controllers/admin/auth.controller");
const express = require("express");
const router = express.Router();

router.get("/", registerController.register);

module.exports = router;
