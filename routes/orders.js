const express = require('express');
const router = express.Router();
const {database} = require('../config/helpers');
/* GET ALL ORDERS */
router.get('/',(req,res)=>{
    database.table('orders_details as od').join([
        {
            table: 'orders as o',
            on: 'o.id = od.order_id'
        },
        {
            table: 'products as p',
            on: 'p.id = od.product_id'
        },
        {
            table: 'users as u',
            on: 'u.id = o.user_id'
        }
    ])
        .withFields(['o.id', 'p.title', 'p.description', 'p.price', 'p.image',  'od.quantity as quantity', 'od.size as size', 'od.color as color'])
        .sort({id: -1})
        .getAll()
        .then(orders => {
            if(orders.length > 0) {
                res.status(200).json({orders:orders});
            }
            else {
                res.json({message: 'No orders found'});
            }
        }).catch(err => console.log(err));
});

/*GET SINGLE ORDER */
router.get('/:id', async (req, res) => {
    let orderId = req.params.id;
    console.log(orderId);

    database.table('orders_details as od')
        .join([
            {
                table: 'orders as o',
                on: 'o.id = od.order_id'
            },
            {
                table: 'products as p',
                on: 'p.id = od.product_id'
            },
            {
                table: 'users as u',
                on: 'u.id = o.user_id'
            }
        ])
        .withFields(['o.id', 'p.title', 'p.description', 'p.price', 'p.image', 'od.quantity as quantity','od.size', 'od.color'])
        .filter({'o.id': orderId})
        .getAll()
        .then(orders => {
            console.log(orders);
            if (orders.length > 0) {
                res.json({orders:orders});
            } else {
                res.json({message: "No orders found"});
            }

}).catch(err => res.json(err));
});


/* PLACE A NEW ORDER */
router.post('/new', (req,res) => {
    let {userId,fname, lname,country,street,postcode,city,email,phone,message, products} = req.body;
    if(userId != null && userId > 0 && !isNaN(userId))
    {
        database.table('orders')
            .insert({
                user_id: userId,
                fname: fname,
                lname: lname,
                country: country,
                street: street,
                postcode: postcode,
                city: city,
                email: email,
                phone: phone,
                message: message

            }).then(newOrderId=>{
            if(newOrderId > 0)
            {
                products.forEach(async (p) => {
                    let data = await database.table('products').filter({id: p.id}).withFields(['quantity','xs','s','m','l','xl','xxl']).get();
                    let inCart = p.incart;
                    let size = p.size;
                    // let xs = p.xs;
                    // let s = p.s;
                    // let m = p.m;
                    // let l = p.l;
                    // let xl = p.xl;
                    // let xxl = p.xl;


                    switch (size) {
                        case 'XS':
                            data.xs = data.xs - inCart;
                            break;
                        case 'S':
                            data.s = data.s - inCart;
                            break;
                        case 'M':
                            data.m = data.m - inCart;
                            break;
                        case 'L':
                            data.l = data.l - inCart;
                            break;
                        case 'XL':
                            data.xl = data.xl - inCart;
                            break;
                        case 'XXL':
                            data.xxl = data.xxl - inCart;
                            break;
                        default:
                            console.log(":)")
                    }

                    //Deduct the number of pieces ordered from the quantity column in db
                    if(data.quantity>0)
                    {
                        //data.quantity = data.quantity-inCart;
                        data.quantity = data.xs+data.s+data.m+data.l+data.xl+data.xxl;


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
                            quantity: inCart,
                            size: p.size,
                            color: p.color,

                        }).then(newId => {
                        database.table('products')
                            .filter({id: p.id})
                            .update({
                                quantity: data.quantity,
                                xs: data.xs,
                                s: data.s,
                                m: data.m,
                                l: data.l,
                                xl: data.xl,
                                xxl: data.xxl
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


/* FAKE PAYMENT GATEWAY CALL */
router.post('/payment', (req,res)=>{
    setTimeout(()=>{
        res.status(200).json({success:true})
    },3000);
});
module.exports = router;

router.delete('/:id', (req,res)=>{
    Product.destroy({
            where: {
                id: req.params.id
            },
        }
    );
    return res.json({
        status: "ok",
        data: products

    })

})




// const express = require('express');
// const orders = express.Router();
// const {database} = require('../config/helpers');
// const cors = require("cors");
//
//
// const Order = require('../models/Order');
// const OrderDetails = require('../models/OrderDetails');
// const User = require('../models/User');
// const Product = require('../models/Product');
//
//
// OrderDetails.belongsTo(Order, {as: "Order" ,foreignKey:'order_id'});
// Order.hasMany(OrderDetails,{as: "OrderDetails", foreignKey: 'order_id'});
// OrderDetails.belongsTo(Product, {as:"Product", foreignKey:"product_id"});
// Product.hasMany(OrderDetails, {as:"OrderDetails", foreignKey:"product_id"});
//
// User.hasMany(Order, {as: "Order", foreignKey:'user_id'});
// Order.belongsTo(User, {as: "User", foreignKey:'user_id'});
//
//
//
//
// /* GET ALL ORDERS */
//
// orders.get('/', (req,res)=>{
//     OrderDetails.findAll(  {
//         include: [
//             {model: Order, as: 'Order', include: [{model:User, as: 'User'}]},
//             {model: Product, as: 'Product'}
//         ],
//     })
//         .then(orders => {
//             if(orders)
//             {
//                 let ordersJSON = JSON.parse(JSON.stringify(orders));
//                 ordersJSON.forEach(element => element.description = element.Product.description);
//                 ordersJSON.forEach(element => element.name = element.Product.title);
//                 ordersJSON.forEach(element => element.price = element.Product.price);
//                 ordersJSON.forEach(element => element.first_name = element.Order.User.first_name);
//                 res.status(200).json({
//                    orders: ordersJSON
//                 })
//             }
//             else{
//                 res.json({message: 'No products found'})
//             }
//         })
//         .catch(err => {
//             res.send('error: '+ err );
//         })
//
// })
//
// /* GET SINGLE ORDER */
// orders.get('/:id', function(req,res){
//     OrderDetails.findAll({
//         where: {
//             order_id: req.params.id
//         },
//         include: [
//             {model: Order, as: 'Order', include: [{model:User, as: 'User'}]},
//             {model: Product, as: 'Product'}
//         ],
//     }) .then(orders => {
//         if(orders)
//         {
//             let ordersJSON = JSON.parse(JSON.stringify(orders));
//             ordersJSON.forEach(element => element.description = element.Product.description);
//             ordersJSON.forEach(element => element.name = element.Product.title);
//             ordersJSON.forEach(element => element.price = element.Product.price);
//             ordersJSON.forEach(element => element.first_name = element.Order.User.first_name);
//
//             res.status(200).json({
//                 orders: ordersJSON
//             })
//         }
//         else{
//             res.json({message: 'No products found'})
//         }
//     })
//         .catch(err => {
//             res.send('error: '+ err );
//         })
//
//
// })
//
//
//
// //
// // /* PLACE A NEW ORDER */
// //  orders.post('/new', (req,res)=>{
// //
// //
// //      Order.create({
// //
// //          user_id: req.body.user_id,
// //      })
// //          .then(data=> {
// //
// //          res.send(data)
// //      }).catch(err => {
// //          res.json('error: '+err);
// //
// //      })
// //
// //      OrderDetails.create({
// //          include: [
// //              {
// //                  model: Order, as: 'Order'
// //              }
// //          ],
// //          order_id: Order.id,
// //          product_id: req.body.product_id,
// //          quantity: req.body.quantity,
// //          size: req.body.size,
// //          color: req.body.color
// //      })  .then(data=> {
// //          res.send(data)
// //      }).catch(err => {
// //          res.json('error: '+err);
// //
// //      })
// //
// //
// //
// //
// //      // else{
// //      //     OrderDetails.create(req.body)
// //      //         .then(data=> {
// //      //             res.send(data)
// //      //         })
// //      //         .catch(err => {
// //      //             res.json('error: '+err);
// //      //         })
// //      // }
// //
// //
// //  }
// //
// //  )
//
// //
// orders.post('/new', (req,res) => {
//
//
//     let {userId, products} = req.body;
//
//     if(userId != null && userId > 0 && !isNaN(userId))
//     {
//         database.table('orders')
//             .insert({
//                 user_id: userId
//             }).then(newOrderId=>{
//
//             if(newOrderId > 0)
//             {
//                 products.forEach(async (p) => {
//                     let data = await database.table('products').filter({id: p.id}).withFields(['quantity']).get();
//
//                     let inCart = p.incart;
//
//                     //Deduct the number of pieces ordered from the quantity column in db
//                     if(data.quantity>0)
//                     {
//                         data.quantity = data.quantity-inCart;
//
//                         if(data.quantity < 0){
//                             data.quantity = 0;
//                         }
//
//                     }
//                     else
//                     {
//                         data.quantity=0;
//                     }
//
//                     //INSERT ORDER DETAILS
//                     database.table('orders_details')
//                         .insert({
//                             order_id: newOrderId,
//                             product_id: p.id,
//                             quantity: inCart,
//                             size: p.size,
//                             color: p.color
//                         }).then(newId => {
//                         database.table('products')
//                             .filter({id: p.id})
//                             .update({
//                                 quantity: data.quantity
//                             }).then(successNum => {}).catch(err=>console.log(err));
//
//                     }).catch(err => console.log(err));
//
//
//                 });
//             }
//             else {
//                 res.json({message: 'new order failed while adding order details', success: false})
//             }
//             res.json({
//                 message: `Order successfully placed with order id ${newOrderId}`,
//                 success: true,
//                 order_id: newOrderId,
//                 products: products
//             });
//
//         }).catch(err => console.log(err));
//
//     }
//
//     else
//     {
//         res.json({message:'New order failed', success: false});
//     }
//
// });
//
// orders.post('/payment', (req,res)=>{
//     setTimeout(()=>{
//         res.status(200).json({success:true})
//
//     },3000);
// });
//
//
//
// module.exports = orders;