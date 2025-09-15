const { checkSchema } = require("express-validator");
const handleValidationErrors = require("./handleValidationErrors");

exports.createUser = [
  // middleware gán view để sử dụng sau này
  (req, res, next) => {
    res.view = "admin/users/create"; // Gán tên view cần render khi có lỗi
    next(); // tiếp tục
  },
  checkSchema({
    username: {
      notEmpty: true,
      errorMessage: "username is not empty",
    },
    email: {
      notEmpty: {
        errorMessage: "Email is not empty",
      },
      isEmail: {
        errorMessage: "Must be an email",
      },
    },

    first_name: {
      notEmpty: true,
      errorMessage: "Firstname is not empty",
    },

    last_name: {
      notEmpty: true,
      errorMessage: "Latsname is not empty",
    },
  }),
  handleValidationErrors,
];

exports.updateUser = [
  // middleware gán view để sử dụng sau này
  (req, res, next) => {
    res.view = "admin/users/edit"; // Gán tên view cần render khi có lỗi
    next(); // tiếp tục
  },
  checkSchema({
    username: {
      notEmpty: true,
      errorMessage: "username is not empty",
    },
    email: {
      notEmpty: {
        errorMessage: "Email is not empty",
      },
      isEmail: {
        errorMessage: "Must be an email",
      },
    },

    first_name: {
      notEmpty: true,
      errorMessage: "Firstname is not empty",
    },

    last_name: {
      notEmpty: true,
      errorMessage: "Latsname is not empty",
    },
  }),
  handleValidationErrors,
];
