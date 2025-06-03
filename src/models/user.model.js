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
