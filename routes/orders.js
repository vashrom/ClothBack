const express = require('express');
const orders = express.Router();
const {database} = require('../config/helpers');
const cors = require("cors");


const Order = require('../models/Order');
const OrderDetails = require('../models/OrderDetails');
const User = require('../models/User');
const Product = require('../models/Product');


OrderDetails.belongsTo(Order, {as: "Order" ,foreignKey:'order_id'});
Order.hasMany(OrderDetails,{as: "OrderDetails", foreignKey: 'order_id'});
OrderDetails.belongsTo(Product, {as:"Product", foreignKey:"product_id"});
Product.hasMany(OrderDetails, {as:"OrderDetails", foreignKey:"product_id"});

User.hasMany(Order, {as: "Order", foreignKey:'user_id'});
Order.belongsTo(User, {as: "User", foreignKey:'user_id'});




/* GET ALL ORDERS */

orders.get('/', (req,res)=>{
    OrderDetails.findAll(  {
        include: [
            {model: Order, as: 'Order', include: [{model:User, as: 'User'}]},
            {model: Product, as: 'Product'}
        ],
    })
        .then(orders => {
            if(orders)
            {
                let ordersJSON = JSON.parse(JSON.stringify(orders));
                ordersJSON.forEach(element => element.description = element.Product.description);
                ordersJSON.forEach(element => element.name = element.Product.title);
                ordersJSON.forEach(element => element.price = element.Product.price);
                ordersJSON.forEach(element => element.first_name = element.Order.User.first_name);
                res.status(200).json({
                   orders: ordersJSON
                })
            }
            else{
                res.json({message: 'No products found'})
            }
        })
        .catch(err => {
            res.send('error: '+ err );
        })

})

/* GET SINGLE ORDER */
orders.get('/:id', function(req,res){
    OrderDetails.findAll({
        where: {
            order_id: req.params.id
        },
        include: [
            {model: Order, as: 'Order', include: [{model:User, as: 'User'}]},
            {model: Product, as: 'Product'}
        ],
    }) .then(orders => {
        if(orders)
        {
            let ordersJSON = JSON.parse(JSON.stringify(orders));
            ordersJSON.forEach(element => element.description = element.Product.description);
            ordersJSON.forEach(element => element.name = element.Product.title);
            ordersJSON.forEach(element => element.price = element.Product.price);
            ordersJSON.forEach(element => element.first_name = element.Order.User.first_name);

            res.status(200).json({
                orders: ordersJSON
            })
        }
        else{
            res.json({message: 'No products found'})
        }
    })
        .catch(err => {
            res.send('error: '+ err );
        })


})





/* PLACE A NEW ORDER */
// orders.post('/new', (req,res)=>{
//     if(!req.body.title)
//     {
//         res.status(400)
//         res.json({
//             err: 'Bad Data'
//         })
//     }
//     else{
//         OrderDetails.create(req.body)
//             .then(data=> {
//                 res.send(data)
//             })
//             .catch(err => {
//                 res.json('error: '+err);
//             })
//     }
//
//
// }
//
// )


orders.post('/new', (req,res) => {


    let {userId, products} = req.body;

    if(userId != null && userId > 0 && !isNaN(userId))
    {
        database.table('orders')
            .insert({
                user_id: userId
            }).then(newOrderId=>{

            if(newOrderId > 0)
            {
                products.forEach(async (p) => {
                    let data = await database.table('products').filter({id: p.id}).withFields(['quantity']).get();

                    let inCart = p.incart;

                    //Deduct the number of pieces ordered from the quantity column in db
                    if(data.quantity>0)
                    {
                        data.quantity = data.quantity-inCart;

                        if(data.quantity < 0){
                            data.quantity = 0;
                        }

                    }
                    else
                    {
                        data.quantity=0;
                    }

                    //INSERT ORDER DETAILS
                    database.table('orders_details')
                        .insert({
                            order_id: newOrderId,
                            product_id: p.id,
                            quantity: inCart
                        }).then(newId => {
                        database.table('products')
                            .filter({id: p.id})
                            .update({
                                quantity: data.quantity
                            }).then(successNum => {}).catch(err=>console.log(err));

                    }).catch(err => console.log(err));


                });
            }
            else {
                res.json({message: 'new order failed while adding order details', success: false})
            }
            res.json({
                message: `Order successfully placed with order id ${newOrderId}`,
                success: true,
                order_id: newOrderId,
                products: products
            });

        }).catch(err => console.log(err));

    }

    else
    {
        res.json({message:'New order failed', success: false});
    }

});

orders.post('/payment', (req,res)=>{
    setTimeout(()=>{
        res.status(200).json({success:true})

    },3000);
});



module.exports = orders;