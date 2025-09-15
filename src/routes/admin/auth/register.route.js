const registerController = require("@/controllers/admin/auth.controller");
const express = require("express");
const router = express.Router();

router.get("/", registerController.showRegisterForm);
router.post("/", registerController.register);

module.exports = router;
