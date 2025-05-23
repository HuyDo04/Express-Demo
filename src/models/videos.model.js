const db = require("@/configs/db");
const { buildInsertQuery, buildUpdateQuery } = require("@/utils/queryBuilder");

exports.getAllVideos = async () => {
  const [videos] = await db.query("select * from videos");

  return videos;
};

exports.getVideoById = async (id) => {
  const [videos] = await db.query(`select * from videos where id = ? `, [id]);
  return videos[0];
};

exports.createVideo = async (data) => {
  const { columns, placeholders, values } = buildInsertQuery(data);

  const query = `INSERT INTO videos (${columns}) VALUES (${placeholders});`;
  const [{ insertId }] = await db.query(query, values);

  return {
    id: insertId,
    ...data,
  };
};

exports.updateVideo = async (id, data) => {
  const { setClause, values } = buildUpdateQuery(data);

  values.push(id);

  const query = `UPDATE videos SET ${setClause} WHERE id = ?;`;
  await db.query(query, values);

  return {
    id,
    ...data,
  };
};

exports.deleteVideo = async (id) => {
  const [{ affectedRows }] = await db.query(`delete from videos where id = ?`, [
    id,
  ]);
  return affectedRows > 0;
};
