const express = require('express');
const path = require('path');
const app = express();
const bodyParser = require('body-parser');
const port = 1234;
const {postTask, getTasks, deleteTask} = require('../db/querys.js')

app.use(express.static(path.join(__dirname, '../client/dist')));
app.use(bodyParser.json());

app.get('/allTasks', (req, res) => {
    getTasks((err, data) => {
        if(err) {
            console.log('err in getting tasks from server')
            res.sendStatus(500)
        } else {
            res.send(data)
        }
    })
});

app.post('/postTask', (req, res) => {
    // console.log('here is the task -->', req.body.task)
    postTask(req.body.task, (err, data) => {
        if(err){
            console.log('err in postTask in server')
            res.sendStatus(500)
        } else {
            res.send(data)
        }
    })
})

app.delete('/deleteTask', (req, res) => {
    // console.log('here is from delete -->', req.query.task)
    deleteTask(req.query.task, (err, data) => {
        if(err){
            console.log('err in deleting task in server')
            res.sendStatus(500)
        } else {
            res.send(data)
        }
    })
})

app.listen(port, () => {
    console.log(`hurray, you're connected to port ${port}`);
});