const express = require("express");
const router = express.Router();
const productsController = require("@/controllers/admin/products.controller");

router.get("/", productsController.index);

router.get("/create", productsController.create);

router.get("/edit", productsController.edit);

router.get("/:id", productsController.show);

module.exports = router;
