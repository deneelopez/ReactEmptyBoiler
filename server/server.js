const express = require("express");
const path = require("path");
const app = express();
const bodyParser = require("body-parser");
const port = 4000;
const { post, get, delete } = require("../db/querys.js");

app.use(express.static(path.join(__dirname, "../client/dist/")));
app.use(bodyParser.json());

app.get("/", (req, res) => {
  get((error, results) => {
    if (error) {
      res.send(error, null);
    } else {
      // console.log('here are the results', results);
      res.status(200).send(results);
    }
  });
});

app.post("/tasks", (req, res) => {
  console.log('in the server post req: ', req.body);


});

app.delete("/tasks", (req, res) => {

});

app.listen(port, () => {
  console.log(`hurray, you're connected to port ${port}`);
});
