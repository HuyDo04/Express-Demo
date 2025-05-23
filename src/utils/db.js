const Path_DB = "./db.json";
const fs = require("fs").promises;

// Ghi dữ liệu mới vào file db.json
const writeDb = async (resource, data) => {
  let db = {};
  try {
    const jsonDb = await fs.readFile(Path_DB, "utf-8");
    db = JSON.parse(jsonDb);
  } catch (error) {}
  db[resource] = data;
  await fs.writeFile(Path_DB, JSON.stringify(db, null, 2));
};

// Đọc dữ liệu từ db.json
const readDb = async (resource) => {
  try {
    const jsonDb = await fs.readFile(Path_DB, "utf-8");
    const db = JSON.parse(jsonDb);
    return db[resource] || [];
  } catch (error) {}
};

module.exports = {
  writeDb,
  readDb,
};
