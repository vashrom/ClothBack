const express = require('express');
const ordinfo = express.Router();
const cors = require("cors");
ordinfo.use(cors());

const Order = require('../models/Order');
const OrderDetails = require('../models/OrderDetails');
const Product = require('../models/Product');

Order.hasMany(OrderDetails, {as: "OrderDetails" ,foreignKey:'order_id'});
Product.hasMany(OrderDetails, {as: "OrderDetails", foreignKey:'product_id'});
OrderDetails.belongsTo(Order,{as: "Order", foreignKey: 'order_id'});
OrderDetails.belongsTo(Product,{as: "Product", foreignKey: 'product_id'});


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



    let lang = 'ua';

    ordinfo.get('/:lang/user/:id', (req, res) => {

        lang = req.params.lang

        OrderDetails.findAll({
            include: [{
                model: Order, as: 'Order',
            },
                {
                    model: Product, as: 'Product',
                    attributes: ['id', 'title_' + lang, 'image', 'images', 'description_' + lang, 'price_' + lang, 'quantity', 'cat_id', 'xs', 's', 'm', 'l', 'xl', 'xxl']

                }
            ],
            where: {
                '$Order.user_id$': req.params.id,
            }
        }).then(orders => {
            if (orders) {
                let OrdersJSON = JSON.parse(JSON.stringify(orders));
                OrdersJSON.forEach(element => element.user_id = element.Order.user_id);


                switch (lang) {
                    case 'ua': {
                        OrdersJSON.forEach(element => element.Product.title = element.Product.title_ua);
                        OrdersJSON.forEach(element => element.Product.price = element.Product.price_ua);
                        OrdersJSON.forEach(element => element.Product.description = element.Product.description_ua);


                    }
                        break;
                    case 'de': {
                        OrdersJSON.forEach(element => element.Product.title = element.Product.title_de);
                        OrdersJSON.forEach(element => element.Product.price = element.Product.price_de);
                        OrdersJSON.forEach(element => element.Product.description = element.Product.description_de);
                    }
                        break;
                    case 'ru': {
                        OrdersJSON.forEach(element => element.Product.title = element.Product.title_ru);
                        OrdersJSON.forEach(element => element.Product.price = element.Product.price_ru);
                        OrdersJSON.forEach(element => element.Product.description = element.Product.description_ru);
                    }
                        break;

                }


                res.json({orders: OrdersJSON})
            } else {
                res.send('Orders does not exist');
            }
        }).catch(err => {
            res.send('error: ' + err)
        })
    })

    ordinfo.get('/user/:id', (req, res) => {
        OrderDetails.findAll({
            include: [{
                model: Order, as: 'Order',
            },
                {
                    model: Product, as: 'Product',
                }
            ],
            where: {
                '$Order.user_id$': req.params.id
            }
        }).then(orders => {
            if (orders) {
                let OrdersJSON = JSON.parse(JSON.stringify(orders));
                OrdersJSON.forEach(element => element.user_id = element.Order.user_id);
                res.json({orders: orders})
            } else {
                res.send('Orders does not exist');
            }
        }).catch(err => {
            res.send('error: ' + err)
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


