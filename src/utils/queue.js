// require("module-alias/register");
// const queuesService = require("@/service/queue.service");

// function getMySQLDateTime(date) {
//     const d = (date instanceof Date && !isNaN(date)) ? date : new Date();
//     return d.toISOString().slice(0, 19).replace('T', ' ');
// }

// async function (type, payload, options = {}) {
//     const {
//         max_retries = 3, 
//         retries_count = 0,
//         status = "pending"
//     } = options;

//     const newQueue = {
//         type,
//         payload: JSON.stringify(payload),
//         status,
//         max_retries: max_retries ?? 3,
//         retries_count: retries_count ?? 0,
//         created_at: getMySQLDateTime()
//     };

//     const inserted = await queuesService.create(newQueue);
    
// }

// dispatch();

// module.exports = {
//     dispatch
// };

const queuesService = require("@/service/queue.service");

async function dispatch(type, payload) {
    const newQueue = {
        type,
        // max_retries: max_retries ?? 3,
        // retries_count: retries_count ?? 0,
        payload: JSON.stringify(payload),
    };
    await queuesService.create(newQueue);
}

module.exports = {
    dispatch,
};