// 1: Tạo ra session ID -> bằng một chuỗi ngẫu nhiên, không trùng lặp
// 2: Yêu cầu gửi phản hồi (server -> client) yêu cầu browser tạo ra cookie sid=xxxx
// 3: Lấy sid từ cookie để xác định client
const { randomUUID } = require("node:crypto");
const sessionModel = require("@/models/session.model");
const userService = require("@/service/user.service");

async function handleSession(req, res, next) {
  let _sid = req.cookies.sid;
  let session = _sid && (await sessionModel.findBySid(_sid));

  // Nếu không có session → tạo mới
  if (!session) {
    _sid = randomUUID();
    session = await sessionModel.create({
      sid: _sid,
      data: JSON.stringify({}),
    });

    const date = new Date();
    date.setDate(date.getDate() + 1);
    const expires = date.toUTCString();

    res.setHeader(
      "Set-Cookie",
      `sid=${_sid}; Path=/; HttpOnly; Expires=${expires}`
    );
  }

  let sessionData = {};
  try {
    sessionData = JSON.parse(session.data ?? "{}");
  } catch (error) {
    sessionData = {};
  }

  req.session = {
    get(key) {
      return sessionData[key] ?? null;
    },

    async set(key, value) {
      sessionData[key] = value;
      await sessionModel.update(_sid, {
        data: JSON.stringify(sessionData),
      });
    },
  };

  next();
}

module.exports = handleSession;
