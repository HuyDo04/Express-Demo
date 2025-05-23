const express = require("express");
const router = express.Router();

router.get("/", (req, res) => {
  res.render("admin/settings/index");
});

module.exports = router;