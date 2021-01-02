const {exec} = require('child_process')

exports.readFile = function(req, res) {
    var param = req.body.param
    console.log(req.body)
    if (param === '1'){
        exec(`bash test.sh play_pause`, (e, stdout, stderr) => {
            if (e instanceof Error){
                console.log(e)
                throw e
            }
            console.log('stdout', stdout)
            console.log('stederr', stderr)
            
        })
    }
    else if (param === '2'){
        exec(`bash test.sh volume_up`, (e, stdout, stderr) => {
            if (e instanceof Error){
                console.log(e)
                throw e
            }
            console.log('stdout', stdout)
            console.log('stederr', stderr)
            
        })
    }
    else if (param === '3'){
        exec(`bash test.sh volume_down`, (e, stdout, stderr) => {
            if (e instanceof Error){
                console.log(e)
                throw e
            }
            console.log('stdout', stdout)
            console.log('stederr', stderr)
            
        })
    }
    else if (param === '4'){
        exec(`bash test.sh mute_audio`, (e, stdout, stderr) => {
            if (e instanceof Error){
                console.log(e)
                throw e
            }
            console.log('stdout', stdout)
            console.log('stederr', stderr)
            
        })
    }
    else if (param === '5'){
        exec(`bash test.sh unmute_audio`, (e, stdout, stderr) => {
            if (e instanceof Error){
                console.log(e)
                throw e
            }
            console.log('stdout', stdout)
            console.log('stederr', stderr)
            
        })
    }
    else{
        exec(`bash test.sh exit`, (e, stdout, stderr) => {
            if (e instanceof Error){
                console.log(e)
                throw e
            }
            console.log('stdout', stdout)
            console.log('stederr', stderr)
            
        })
    }
    res.end()
    
    
}