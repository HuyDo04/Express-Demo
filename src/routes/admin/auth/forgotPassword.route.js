const forgotPasswordController = require("@/controllers/admin/auth.controller");
const express = require("express");
const router = express.Router();

router.get("/", forgotPasswordController.showForgotPassword);
router.post("/", forgotPasswordController.forgotPassword);
router.get("/verifyOtp", forgotPasswordController.showVerifyOtp);
router.post("/verifyOtp", forgotPasswordController.verifyOtp);
router.get("/resetPassword", forgotPasswordController.showResetPassword);
router.post("/resetPassword", forgotPasswordController.resetPassword);

module.exports = router;
