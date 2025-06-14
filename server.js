require("module-alias/register");
// import express from "express"
const express = require("express");
const expressLayouts = require("express-ejs-layouts");
const router = require("./src/routes/api");
const adminRouter = require("@/routes/admin");
const methodOverride = require("method-override");
const handleNotFound = require("@/middlewares/handleNotFound");
const handleErrors = require("@/middlewares/handleErrors");
const responseEnhancer = require("@/middlewares/responseEhancer");
const handlePagination = require("@/middlewares/handlePagination");
const handleSidebar = require("@/middlewares/admin/handleSidebar");
const handleSession = require("@/middlewares/admin/handleSession");
const shareLocals = require("@/middlewares/admin/shareLocals");
const cookieParser = require("cookie-parser");
const checkAuth = require("@/middlewares/admin/checkAuth");

const app = express();

// middleware
app.use(express.static("public"));
app.use(express.json());
app.use(express.urlencoded());
app.use(handlePagination);
app.use(responseEnhancer);
app.use(methodOverride("_method"));
app.use(cookieParser());

// Set template engine
app.use(expressLayouts);
app.set("view engine", "ejs");
app.set("views", "./src/views");
app.set("layout", "admin/layouts/default");

// Routers
app.use("/api/v1", router);
app.use("/admin", handleSession, shareLocals,checkAuth ,handleSidebar, adminRouter);

// Error handler
app.use(handleNotFound);
app.use(handleErrors);

app.listen(3000, () => {
  console.log("App running on port 3000");
});

// 1. chuẩn hóa response (success, error => tạo utils response)
// 2. Cơ chế (middleware) náo lỗi 404 trả về JSON
// 3. Cơ chế xử lý exception chung => trả về JSON
// 4. Thêm service cho layer
// 5. Viết API  mối quan hệ 1-n
