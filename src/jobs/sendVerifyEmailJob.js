const loadEmail = require("@/utils/loadEmail");
const userService = require("@/service/user.service");
const  transporter  = require("@/configs/mailer");
const queuesService = require("@/service/queue.service");

async function sendVerifyEmailJob (job) {
        const {userId} = JSON.parse(job.payload);
        const user = await userService.getById(userId);
        // tạo link xác thực cho userId
        const token = "abcdxyz";
        const data = {token, userId}
        const template = await loadEmail("auth/verification", data)
        console.log("bắt đầu gửi email")
        // Gửi email
        const info = await transporter.sendMail({
        from: `"F8" <dovhf8193@fullstack.edu.vn>`,
        subject: "Verification email",
        to: user.email,
        html: template
        })
        // fake
        await userService.update(userId, {
        email_sent_at: new Date()
        })

        console.log("cập nhật trạng thái")
        console.log(info)
     }

module.exports = sendVerifyEmailJob;