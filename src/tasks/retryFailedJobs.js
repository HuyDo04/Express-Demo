const queuesService = require("@/service/queue.service")

async function retryFailedJobs () {
    // Lấy toàn bộ rejected jobs, update status thành "pending"(2:34 video)
    console.log("Testnjob loi")
    const rejectJobs = await queuesService.getRejectJobs();
    console.log(rejectJobs);
    
    if (!rejectJobs) return

    for ( const job of rejectJobs) {
        const {retries_count, max_retries} = job;
            if (retries_count < max_retries) {
                await queuesService.update(job.id, {
                    retries_count: retries_count + 1,
                    status: "pending" 
                })
                console.log(`[RETRY] Job #${job.id} -> retries_count: ${retries_count + 1}`);
            }else {
                console.log(`${job.id} đã vượt quá số lần thử lại`)
            }
    }   
}

module.exports = retryFailedJobs