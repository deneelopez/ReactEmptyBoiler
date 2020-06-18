const mysql = require('mysql');
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'maddy20bo',
  database: 'purrget'
});

connection.connect(err => {
  if (err) {
    console.log('couldnt connect to database');
  } else {
    console.log('connected to mysql database!');
  }
});

const post = (task, callback) => {
  connection.query('INSERT INTO', (error, results) => {
    if (error) {
      callback(error, null);
    } else {
      callback(null, results);
    }
  });
};

const get = (callback) => {
  connection.query('SELECT', (error, result) => {
    if (error) {
      callback(error, null);
    } else {
      callback(null, result);
    }
  });

};

const delete = (id, callback) => {

};

module.exports = {post, get, delete};