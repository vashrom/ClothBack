const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
const cors = require('cors');
const bodyParser = require("body-parser");
const mailer = require("./nodemailer");

const app = express();


// var https = require( "https" );  // для организации https
// var fs = require( "fs" );   // для чтения ключевых файлов

// httpsOptions = {
//   key: fs.readFileSync("server.key"), // путь к ключу
//   cert: fs.readFileSync("server.crt") // путь к сертификату
// }

// https.createServer(httpsOptions, app).listen(443);

// var https = require( "https" ); 
// var fs = require( "fs" );   

// httpsOptions = {
//   key: fs.readFileSync("server.key"), // путь к ключу
//   cert: fs.readFileSync("server.crt") // путь к сертификату
// }

// https.createServer(httpsOptions, app).listen(443);


app.use(cors({
    origin: "*",
    methods: ['GET', 'POST', 'PATCH', 'DELETE', 'PUT' ],
    allowedHeaders: 'Content-Type, Authorization, Origin, X-Requested-With, Accept'
}));

//DB Conn
require("./config/db");

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}))
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));





 

  




// Import Routes

const productsRoute = require('./routes/products');
const usersRoute = require('./routes/users');
const blogRoute = require('./routes/blogs');
const commentsRoute = require('./routes/comments');
const ordersInfoRoute = require('./routes/orders_info');
const categoryRoute = require('./routes/categories');
const newsRoute = require('./routes/newsletters');
const imagesRoute = require('./routes/images');
const collectionRoute = require('./routes/collections');
const ordersRoute = require('./routes/orders');
const SMTPConnection = require('nodemailer/lib/smtp-connection');
const OrderDetails = require('./models/OrderDetails');

//Use Routes

app.use('/api/products', productsRoute);
app.use('/api/users', usersRoute);
app.use('/api/blog', blogRoute);
app.use('/api/comments', commentsRoute);
app.use('/api/ordersinfo', ordersInfoRoute);
app.use('/api/category', categoryRoute);
app.use('/api/news', newsRoute);
app.use('/api/images', imagesRoute);
app.use('/api/collection', collectionRoute);
app.use('/api/orders', ordersRoute);





module.exports = app;