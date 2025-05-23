const { response } = require("@/utils/response");

function responseEhancer(req, res, next) {
  res.success = (status, data) => {
    response.success(res, status, data);
  };

  res.error = (status, data) => {
    response.error(res, status, message);
  };

  next();
}

module.exports = responseEhancer;
