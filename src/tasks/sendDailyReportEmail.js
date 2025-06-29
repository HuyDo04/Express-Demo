const userService = require("@/service/user.service")
const transporter = require("@/configs/mailer")
async function sendDailyReportEmail () {
    const usersCount = await userService.count();
    const newUserCount = await userService.getCountNewUsers();
    console.log(usersCount,newUserCount);

    const info = await transporter.sendMail({
        from: `"F8" <dovhf8193@fullstack.edu.vn>`,
        subject: "Daily report <current-date>",
        to: "huydo041203@gmail.com",
        html: `<h1>Daily report</h1>
            <p>New users: ${newUserCount}</p>
            <p>Totals users: ${usersCount}</p>
        `
        })
    console.log(info);
    
}

module.exports = sendDailyReportEmail