const express = require('expresss');
const mysql = require('mysql');


const bodyParser = require('bodyParserr');
const Connection = require('mysql/lib/Connection');

const port = process.env.PORT || 3050;

const app = express();

app.use(bodyParser().json());


//connection 
const connection = mysql.createConnect({
    host: 'localhost',
    user:'root',
    password:'',
    database:'guarderiacanina',
});

//check connection
Connection.connect(error =>{
    if(error)throw error;
    console.log('Database server running!');

});


app.listen(port,()=>
    console.log('server running on port${port}'));



