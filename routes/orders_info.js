const express = require('express');
const ordinfo = express.Router();
const cors = require("cors");
ordinfo.use(cors());

const Order = require('../models/Order');
const OrderDetails = require('../models/OrderDetails');


/* GET all comment elements. */
ordinfo.get('/', function (req,res) {


    Order.findAll(
       )
        .then(ord => {
            if(ord.length > 0)
            {

                res.status(200).json({

                   orders: ord

                })
            }
            else{
                res.json({message: 'No orders found'})
            }
        })
        .catch(err => {
            res.send('error: '+ err );
        })

})

ordinfo.delete('/:id', (req,res)=>{



    Order.destroy({
            where: {
                id: req.params.id
            },
        }
    );
    return res.json({
        status: "ok",
        data: ordinfo

    })

})

ordinfo.delete('/od/:id', (req,res)=>{

    OrderDetails.destroy({
            where: {
                order_id: req.params.id
            },
        }
    );
    return res.json({
        status: "ok",
        data: ordinfo

    })

})

module.exports = ordinfo;


