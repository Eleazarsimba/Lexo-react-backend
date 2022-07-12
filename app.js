const express = require("express");
const createError = require('http-errors')
const bodyParser = require('body-parser');
var cors = require('cors')
require('dotenv').config()
const app = express();

var corsOptions = {
    origin: 'http://localhost:3000',
    optionsSuccessStatus: 200 // some legacy browsers (IE11, various SmartTVs) choke on 204
  }
  app.use(cors(corsOptions));
const management = require('./routes/managementroute')
// parse requests of content-type: application/json
// app.use(express.json())
app.use(bodyParser.json());
app.use('/theemployee', management, cors(corsOptions));
// parse requests of content-type: application/x-www-form-urlencoded
app.use(express.urlencoded({ extended: true }));
app.use(cors())
app.use(express.json({limit:'50mb'}));

//set errors
app.use(async(req,res,next) =>{
    next(createError.NotFound())
})
app.use((err,req,res,next) =>{
    res.status(err.status || 500)
    res.send({
        error: {
            status:err.status || 500,
            message: err.message,
        },
    })
})
// set port, listen for requests
const PORT = process.env.PORT || 3001;
app.listen(PORT, () => {
  console.log("Server is running on port 3001.");
});
