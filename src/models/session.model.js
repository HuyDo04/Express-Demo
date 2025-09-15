const db = require("@/configs/db");
const { buildUpdateQuery, buildInsertQuery } = require("@/utils/queryBuilder");

exports.findBySid = async (sid) => {
  const [rows] = await db.query(`select * from sessions where sid = ?`, [sid]);

  return rows[0] ?? null;
};

exports.create = async (data) => {
  const { columns, placeholders, values } = buildInsertQuery(data);

  const query = `INSERT INTO sessions (${columns}) VALUES (${placeholders});`;
  const [{ insertId }] = await db.query(query, values);

  return {
    sid: insertId,
    ...data,
  };
};

exports.remove = async (sid) => {
  const [affectedRows] = await db.query(`delete from sessions where sid = ?`, [
    sid,
  ]);
  return affectedRows > 0;
};

exports.update = async (sid, data) => {
  const { setClause, values } = buildUpdateQuery(data);

  values.push(sid);

  const query = `UPDATE sessions SET ${setClause} WHERE sid = ?;`;
  await db.query(query, values);

  return {
    sid,
    ...data,
  };
};
