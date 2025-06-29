const sequelize = require("@/configs/database");
const { DataTypes } = require("sequelize");

const Post = sequelize.define("Post", {
  title: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  slug: {
    type: DataTypes.STRING,
    allowNull: false
  },

  content: {
    type: DataTypes.STRING,
    allowNull: false
  }
}, {
  tableName: "posts",
  underscored:true,
  timestamps: true,
})

module.exports = Post