const nodemailer = require("nodemailer");

// Create a test account or replace with real credentials.
const transporter = nodemailer.createTransport({
  service: "gmail",
  secure: false, // true for 465, false for other ports
  auth: {
    user: "dovhf8193@fullstack.edu.vn",
    pass: "vvgx ihqb wzsw lute",
  },
});

module.exports = transporter;