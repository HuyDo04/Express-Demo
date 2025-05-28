const { validationResult } = require("express-validator");
const response = require("@/utils/response");

const handleValidationErrors = (req, res, next) => {
  const result = validationResult(req); // Lấy kết quả validate từ express-validator

  if (result.isEmpty()) return next(); // Nếu không có lỗi chuyển sang middleware tiếp theo

  const errors = result
    .array({
      onlyFirstError: true, // Mỗi field chỉ lấy lỗi đầu tiên (tránh hiện nhiều lỗi cho cùng một trường)
    })
    .reduce((errors, error) => {
      errors[error.path] = error.msg; // Chuyển array lỗi thành object { field: message }
      return errors;
    }, {});
  console.log(errors);

  res.render(res.view, {
    errors, // Gửi obj lỗi xuống view
    old: req.body, // Gửi dữ liệu cũ xuống để hiển thị lại trong form (tránh mất data đã nhập)
  });
};

module.exports = handleValidationErrors;
