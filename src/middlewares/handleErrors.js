const { response } = require("@/utils/response");

function handleErrors(error, req, res, next) {
  console.error("Error Handler:", error.stack || error); // log ra terminal

  response.error(
    res,
    error.status ?? 500,
    String(error),
    error.errors
  );
}

module.exports = handleErrors;
