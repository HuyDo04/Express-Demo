const { checkSchema } = require("express-validator");
const handleValidationErrors = require("./handleValidationErrors");

exports.createPost = [
  checkSchema({
    title: {
      notEmpty: true,
      errorMessage: "title is not empty",
    },
  }),
  handleValidationErrors,
];

exports.updatePost = [
  checkSchema({
    title: {
      notEmpty: true,
      optional: true,
      errorMessage: "title is not empty",
    },
  }),
  handleValidationErrors,
];
