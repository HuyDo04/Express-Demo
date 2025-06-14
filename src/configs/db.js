const mysql = require("mysql2/promise");

const db = mysql.createPool({
  host: "localhost",
  port: 3306,
  user: "root",
  database: "tiktok_clone",
  waitForConnections: true,
  connectionLimit: 10,
  maxIdle: 10, // max idle connections, the default value is the same as `connectionLimit`
  idleTimeout: 60000, // idle connections timeout, in milliseconds, the default value 60000
  queueLimit: 0,
  enableKeepAlive: true,
  keepAliveInitialDelay: 0,
});

async function test() {
  try {
    const test = await db.query("SELECT 1 + 1 as result");
    if (test) console.log("Connect db success");
  } catch (error) {
    console.log("Connect db fail");
  }
}

test();

module.exports = db;
