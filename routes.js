
module.exports = (app) => {
    // var createUser = require('./controller/createUser')
    var file = require('./readFile')

    // Get initial api
    app.get('/api', async (req,res) => {
        res.json({
            message: "Welcome to the Sisbro API"
        })
    })

    // Post register api
    app.route('/api/execute')
        .post(file.readFile)


}