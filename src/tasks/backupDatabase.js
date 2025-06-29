const fs = require('fs')
const path = require("path")
const spawn = require('child_process').spawn

function backupDatabase () {
    const now = new Date();

    const hours = String(now.getHours()).padStart(2, '0');
    const minutes = String(now.getMinutes()).padStart(2, '0');
    const seconds = String(now.getSeconds()).padStart(2, '0');

    const fileName = `${hours}h-${minutes}p-${seconds}s.dump.sql`
    const dumpFileName = path.join(__dirname, "..", "storage","backup-db", fileName)

    const writeStream = fs.createWriteStream(dumpFileName)

    const dump = spawn('mysqldump', [
        '-u',
        'root',
        'tiktok_clone',
    ])
    dump
        .stdout
        .pipe(writeStream)
        .on('finish', function () {
            console.log('Completed')
        })
        .on('error', function (err) {
            console.log(err)
        })
}

module.exports= backupDatabase