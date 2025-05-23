const express = require("express");
const { readDb, writeDb } = require("@/utils/db");
const { response } = require("@/utils/response");
const throw404 = require("@/utils/throw404");
const router = express.Router();

const RESOURCE = "comments";

exports.getAllComments = async (req, res) => {
  const comments = await readDb(RESOURCE);

  response.success(res, 200, comments);
};

exports.getCommentById = async (req, res) => {
  const comments = await readDb(RESOURCE);
  const comment = comments.find((item) => item.id === +req.params.id);

  if (!comment) {
    throw404();
  }

  response.success(res, 200, comment);
};

exports.createComments = async (req, res) => {
  const comments = await readDb(RESOURCE);

  const newComment = {
    id: (comments[comments.length - 1].id ?? 0) + 1,
    ...req.body,
  };
  console.log(newComment);

  comments.push(newComment);

  await writeDb(RESOURCE, comments);

  response.success(res, 201, newComment);
};

exports.updateComments = async (req, res) => {
  const comments = await readDb(RESOURCE, []);
  const comment = comments.find((item) => item.id === +req.params.id);

  if (!comment) {
    throw404();
  }

  comment.comment = req.body.comment;

  await writeDb(RESOURCE, comments);

  response.success(res, 201, comment);
};

exports.deleteComment = async (req, res) => {
  const comments = await readDb(RESOURCE);

  const index = comments.findIndex((item) => item.id === +req.params.id);

  if (index === -1) {
    throw404();
  }

  comments.splice(index, 1);
  await writeDb(RESOURCE, comments);

  response.success(res, 204, comments);
};

module.export = router;
