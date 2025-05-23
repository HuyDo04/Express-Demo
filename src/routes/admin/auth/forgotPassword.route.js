const express = require("express");
const router = express.Router();

router.get("/", (req, res) => {
  res.render("admin/auth/forgotPassword/index", { layout: false });
});

module.exports = router;
