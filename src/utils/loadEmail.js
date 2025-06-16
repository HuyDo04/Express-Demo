const path = require("path");
const ejs = require("ejs")

async function loadEmailTemplate (template,data) {
    
    const emailPath = path.join(__dirname, "..", "emails", `${template}.ejs`)
    const html = await ejs.renderFile(emailPath, data)

    return html
}

module.exports = loadEmailTemplate;