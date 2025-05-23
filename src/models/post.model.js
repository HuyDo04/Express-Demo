const db = require("@/configs/db");
const { buildUpdateQuery, buildInsertQuery } = require("@/utils/queryBuilder");

exports.findAll = async () => {
  const [rows] = await db.query("SELECT * FROM posts ORDER BY created_at DESC");
  return rows;
};

exports.findById = async (id) => {
  const [results] = await db.query(
    `select * from users where id = ? or username = ?`,
    [id, id]
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
