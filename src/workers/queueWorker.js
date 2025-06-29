require("module-alias/register");
const queuesService = require("@/service/queue.service");
const sendVerifyEmailJob = require("@/jobs/sendVerifyEmailJob");


// pending: đang chờ xử lý
// processing: đang xử lý
// completed: đã hoàn thành
// reject: thất bại


const handlers = {
    sendVerifyEmailJob,
};

async function jobProcess(job) {
    const handler = handlers[job.type];
    
    if (handler) {
        try {
            await queuesService.update(job.id, { status: "processing" });
            await handler(job);
            await queuesService.update(job.id, { status: "completed" });
        } catch (error) {
            await queuesService.update(job.id, { status: "reject" });
        }
    }
}

async function queueWorker() {
    while (true) {
        const jobs = await queuesService.getPendingJobs();
        for (let job of jobs) {
            await jobProcess(job);
        }
        await new Promise((resolve) => setTimeout(resolve, 1000));
    }
}

queueWorker();