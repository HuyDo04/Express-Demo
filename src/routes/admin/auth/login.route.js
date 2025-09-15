const loginController = require("@/controllers/admin/auth.controller");
const express = require("express");
const router = express.Router();

router.get("/", loginController.showLoginForm);
router.post("/", loginController.login);

module.exports = router;
