const cron = require('node-cron');
const queue = require("@/utils/queue")

const activeTasks = {};

function scheduleJob (name, crontime, handler) {

    if(activeTasks[name]) {
        return console.log(`Task ${name} exists.`)
    }

    const task = cron.schedule(crontime, () => {
        try {
            handler()
        } catch (error) {
            console.log("Errors", error)
        }
    });
    activeTasks[name] = task;
}

module.exports = scheduleJob