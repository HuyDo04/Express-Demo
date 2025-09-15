const db = require("@/configs/db");
const { buildUpdateQuery, buildInsertQuery } = require("@/utils/queryBuilder");
const md5 = require("md5");

exports.findAll = async (page = 1, limit = 10) => {
  const offset = (page - 1) * limit;
  const [rows] = await db.query(
    "SELECT id, first_name, last_name, username,avatar, email, intro  FROM users where username is not null ORDER BY id DESC LIMIT ? OFFSET ?",
    [+limit, +offset]
  );

  return rows;
};

exports.findCountNewUsers= async () => {
  const date = new Date();
  date.setDate(-1);
  const currentDate = `${date.getFullYear()}-${date.getMonth() + 1}-${date.getDate()}`;

  const startTime = `${currentDate} 00:00:00`;
  const endTime = `${currentDate} 23:59:00`;

  console.log([startTime, endTime])
  const [[{ count }]] = await db.query(`select count(*) as count from users where created_at between ? and ? `, [startTime, endTime])

  return count;
};

exports.count = async () => {
  const [[{ total }]] = await db.query("select count(*) as total from users");
  return total;
};

exports.findById = async (id) => {
  const [results] = await db.query(
    `select * from users where id = ? or username = ?`,
    [id, id]
  );

  return results[0] ?? null;
};

exports.findByEmailAndPassword = async (email, password) => {
  const [results] = await db.query(
    `select * from users where email = ? and password = ?`,
    [email, md5(password)]
  );

  return results[0] ?? null;
};

exports.create = async (data) => {
  const { columns, placeholders, values } = buildInsertQuery(data);

  const query = `INSERT INTO users (${columns}) VALUES (${placeholders});`;
  const [{ insertId }] = await db.query(query, values);

  return {
    id: insertId,
    ...data,
  };
};

exports.findByEmail = async (email) => {
  const query = "select id, email, reset_password_otp, reset_password_otp_expires_at from users where email = ? limit 1";
  const [rows] = await db.query(query, [email]);
  return rows[0];
};


exports.update = async (id, data) => {
  const { setClause, values } = buildUpdateQuery(data);

  values.push(id);

  const query = `UPDATE users SET ${setClause} WHERE id = ?;`;
  await db.query(query, values);

  return {
    id,
    ...data,
  };
};

exports.remove = async (id) => {
  const [affectedRows] = await db.query(`delete from users where id = ?`, [id]);
  return affectedRows > 0;
};
