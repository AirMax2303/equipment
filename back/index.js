
const express = require('express');
const app = express();
const mysql = require('mysql');
const bodyParser = require('body-parser');
const {response} = require("express");
const {setCharset} = require("express/lib/utils");


const { WebSocketServer } = require('ws');
const {port} = require("mysql/lib/ConnectionConfig");
const wss = new WebSocketServer({ port: 9000 });

wss.onopen = function () {
    console.log('WebSocketServer started')
}

wss.on('connection', function connection(ws) {
    ws.on('message', function message(data) {
        console.log('received: %s', data);
        const obj = JSON.parse(data);
        console.log('name: ' + obj.name)
    });
    ws.send('something');
});

//app.use(express.urlencoded({extended: false}))

const PORT = 5000

app.listen(PORT, () => console.log('SERVER STARTED ON PORT ' + PORT))

//start mysql connection
const connection = mysql.createConnection({
    host: 'localhost', //mysql database host name
    user: 'root', //mysql database user name
    password: 'qwe', //mysql database password
    database: 'autonanny'
});

connection.connect(function(err) {
    if (err) throw err
    console.log('You are now connected with mysql database...')
})
//end mysql connection

//start body-parser configuration
app.use( bodyParser.json() );       // to support JSON-encoded bodies
app.use(bodyParser.urlencoded({     // to support URL-encoded bodies
    extended: true
}));
//end body-parser configuration

//---------------------------------------------------------------------------------------------------------------------

//rest api to get all clients
app.get('/clients', function (req, res) {
    console.log('get /clients')
    connection.query('select * from clients', function (error, results) {
        if (error)
            res.status(500).end(JSON.stringify(error))
        else
            res.end(JSON.stringify(results));
    });
});
//rest api to get a single clients data


app.get('/clients/:id', function (req, res) {
    connection.query('select * from clients where id=?', [req.params.id], function (error, results) {
        if (error)
            res.status(500).end(JSON.stringify(error))
        else
            res.end(JSON.stringify(results));
    });
});

//rest api to create a new clients record into mysql database
app.post('/clients', function (req, res) {
    const params = req.body;
    console.log('add /clients')
    console.log(req.body)
    connection.query('INSERT INTO clients SET ?', params, function (error, results) {
        if (error)
            res.status(500).end(JSON.stringify(error))
        else
            res.end(JSON.stringify(results));
    })
});

//rest api to update record into mysql database
app.put('/clients', function (req, res) {
    connection.query('UPDATE `clients` SET `name`=? where `id`=?', [req.body.name, req.body.id], function (error, results) {
        if (error) throw error;
        res.end(JSON.stringify(results));
    });
});

//rest api to delete record from mysql database
app.delete('/clients', function (req, res) {
    console.log(req.body);
    connection.query('DELETE FROM `clients` WHERE `id`=?', [req.body.id], function (error) {
        if (error) throw error;
        res.end('Record has been deleted!');
    });
});

//---------------------------------------------------------------------------------------------------------------------

//rest api to get all drivers
app.get('/drivers', function (req, res) {
    console.log('get /drivers')
    connection.query('select * from drivers', function (error, results) {
        if (error)
            res.status(500).end(JSON.stringify(error))
        else
            res.end(JSON.stringify(results));
    });
});
//rest api to get a single drivers data

app.get('/drivers/:id', function (req, res) {
    connection.query('select * from drivers where id=?', [req.params.id], function (error, results) {
        if (error)
            res.status(500).end(JSON.stringify(error))
        else
            res.end(JSON.stringify(results));
    });
});

//rest api to create a new drivers record into mysql database
app.post('/drivers', function (req, res) {
    const params = req.body;
    console.log('add /drivers')
    console.log(req.body)
    connection.query('INSERT INTO drivers SET ?', params, function (error, results) {
        if (error)
            res.status(500).end(JSON.stringify(error))
        else
            res.end(JSON.stringify(results));
    })
});

//rest api to update record into mysql database
app.put('/drivers', function (req, res) {
    connection.query('UPDATE `drivers` SET `name`=? where `id`=?', [req.body.name, req.body.id], function (error, results) {
        if (error) throw error;
        res.end(JSON.stringify(results));
    });
});

//rest api to delete record from mysql database
app.delete('/drivers', function (req, res) {
    console.log(req.body);
    connection.query('DELETE FROM `drivers` WHERE `id`=?', [req.body.id], function (error) {
        if (error) throw error;
        res.end('Record has been deleted!');
    });
});

//---------------------------------------------------------------------------------------------------------------------

//rest api to get all grafics
app.get('/grafics', function (req, res) {
    connection.query('select * from grafics where clientid=? and gdayweek=?', [req.query.clientid, req.query.dayweek], function (error, results) {
        console.log('get /grafics')
        console.log(results)
        console.log(req.query)
        if (error)
            res.status(500).end(JSON.stringify(error))
        else
            res.end(JSON.stringify(results));
    });
});

//rest api to get a single grafics data

app.get('/grafics/:id', function (req, res) {
    connection.query('select * from grafics where id=?', [req.params.id], function (error, results) {
        if (error)
            res.status(500).end(JSON.stringify(error))
        else
            res.end(JSON.stringify(results));
    });
});

//rest api to create a new grafics record into mysql database
app.post('/grafics', function (req, res) {
    const params = req.body;
    console.log('add /grafics')
    console.log(req.body)
    connection.query('INSERT INTO grafics SET ?', params, function (error, results) {
        if (error)
            res.status(500).end(JSON.stringify(error))
        else
            res.end(JSON.stringify(results));
    })
});

//rest api to update record into mysql database
app.put('/grafics', function (req, res) {
    connection.query('UPDATE `grafics` SET `name`=? where `id`=?', [req.body.name, req.body.id], function (error, results) {
        if (error) throw error;
        res.end(JSON.stringify(results));
    });
});

//rest api to delete record from mysql database
app.delete('/grafics', function (req, res) {
    console.log(req.body);
    connection.query('DELETE FROM `grafics` WHERE `id`=?', [req.body.id], function (error) {
        if (error) throw error;
        res.end('Record has been deleted!');
    });
});
