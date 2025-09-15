const verifyemail = require("@/controllers/admin/auth.controller");
const express = require("express");
const router = express.Router();

router.get("/", verifyemail.verifyEmail);

module.exports = router;
