const db = require("@/configs/db");
const { buildUpdateQuery, buildInsertQuery } = require("@/utils/queryBuilder");

exports.findAll = async () => {
  const [rows] = await db.query("SELECT * from queues")

  return rows;
};

exports.findPendingJobs = async () => {
  const [rows] = await db.query(`SELECT * from queues where status = "pending" `)

  return rows;
};

exports.findRejectJobs = async () => {
  const [rows] = await db.query(`SELECT * from queues where status = "reject" `)

  return rows;
};


exports.count = async () => {
  const [[{ total }]] = await db.query("select count(*) as total from queues");
  return total;
};

exports.findById = async (id) => {
  const [results] = await db.query(
    `select * from queues where id = ?`,
    [id, id]
  );

  return results[0] ?? null;
};


exports.create = async (data) => {
  const { columns, placeholders, values } = buildInsertQuery(data);

  const query = `INSERT INTO queues (${columns}) VALUES (${placeholders});`;
  const [{ insertId }] = await db.query(query, values);

  return {
    id: insertId,
    ...data,
  };
};

exports.update = async (id, data) => {
  const { setClause, values } = buildUpdateQuery(data);

  values.push(id);

  const query = `UPDATE queues SET ${setClause} WHERE id = ?;`;
  await db.query(query, values);

  return {
    id,
    ...data,
  };
};

exports.remove = async (id) => {
  const [affectedRows] = await db.query(`delete from queues where id = ?`, [id]);
  return affectedRows > 0;
};
