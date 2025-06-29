require("module-alias/register");
const scheduleJob = require("@/utils/scheduler");
const sendDailyReportEmail = require("./sendDailyReportEmail");
const backupDatabase = require("./backupDatabase");
const retryFailedJobs = require("./retryFailedJobs");

/**
 * -Cấu trúc node-cron
 *  minute hour day month week(* * * * *)
 */

/**
 * Gửi email 2h sáng mỗi ngày
 */
scheduleJob("send_daily_report_email", "* * * * *", sendDailyReportEmail)
/**
 * Backup Database mỗi 2:30 sáng mỗi ngày
 */
scheduleJob("backup_database", "30 2 * * *", backupDatabase)

/**
 * Mỗi 5 phút retry lại các job lỗi
 */
scheduleJob("retry_failed_jobs", "* * * * *", retryFailedJobs)

/**
 * Mỗi phút kiểm tra một lần để xóa users trong thùng rác 
 */
scheduleJob("delete_users_in_trash", "* * * * *", async () => {
    console.log("delete_users_in_trash")
})