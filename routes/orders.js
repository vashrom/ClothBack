const express = require('express');
const orders = express.Router();

const Order = require('../models/Order');
const OrderDetails = require('../models/OrderDetails');
const Product = require('../models/Product');


// /* GET all orders. */
orders.get('/', function (req,res) {
    OrderDetails.findAll({
        include: [
            {
                model: Order, as: 'Order'
            },
            {
                model: Product, as: 'Product'
            }
        ],
        attributes: ['id','quantity', 'size','color']

    }).
    then(orders => {
        if(orders.length > 0)
        {
            let ordersJSON = JSON.parse(JSON.stringify(orders));
            ordersJSON.forEach(element => element.id = element.Order.id);
            ordersJSON.forEach(element => element.title = element.Product.title);
            ordersJSON.forEach(element => element.description = element.Product.description);
            ordersJSON.forEach(element => element.price = element.Product.price);
            ordersJSON.forEach(element => element.image = element.Product.image);


            res.status(200).json({

                orders: ordersJSON

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

/*GET SINGLE ORDER */
orders.get('/:id', function (req,res) {




    OrderDetails.findAll({

        include: [
            {
                model: Order, as: 'Order',
            },
            {
                model: Product, as: 'Product'
            }
        ],
        where: {
            order_id: req.params.id,
        },

        attributes: ['id','quantity', 'size','color']

    })
        .then(order=> {
            if(order) {

                let ordersJSON = JSON.parse(JSON.stringify(order));
                ordersJSON.forEach(element => element.id = element.Order.id);
                ordersJSON.forEach(element => element.title = element.Product.title);
                ordersJSON.forEach(element => element.description = element.Product.description);
                ordersJSON.forEach(element => element.price = element.Product.price);
                ordersJSON.forEach(element => element.image = element.Product.image);


                res.status(200).json({

                    orders: ordersJSON

                })



            } else {
                res.send('Order does not exist');
            }
        })
        .catch(err => {
            res.send('error: '+err)
        })
})

/* FAKE PAYMENT GATEWAY CALL */
orders.post('/payment', (req,res)=>{
    setTimeout(()=>{
        res.status(200).json({success:true})
    },6000);
});




orders.post('/new', (req,res) => {



    let {userId,fname, lname,country,street,postcode,city,email,phone,message, products} = req.body;

    if(userId != null && userId > 0 && !isNaN(userId)) {
        Order.create({
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
        }).then(newOrder => {
            if(newOrder.id >0)
            {

                products.forEach(async (p) => {


                    let data = await Product.findOne({
                        where: { id: p.id },
                        attributes: ['quantity','xs','s','m','l','xl','xxl'],
                    });


                    console.log('LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL'+ data);



                    let inCart = p.incart;
                    let size = p.size;

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

                    OrderDetails.create(
                        {
                            order_id: newOrder.id,
                            product_id: p.id,
                            quantity: inCart,
                            size: p.size,
                            color: p.color
                        }
                    ).then(newId => {
                        Product.update(
                            {
                                quantity: data.quantity,
                                xs: data.xs,
                                s: data.s,
                                m: data.m,
                                l: data.l,
                                xl: data.xl,
                                xxl: data.xxl
                            },
                            {
                                where:
                                    {
                                        id: p.id
                                    }
                            }).then(successNum => {}).catch(err=>console.log(err));
                    }).catch(err=> console.log(err));



                });
            }
            else {
                res.json({message: 'new order failed while adding order details', success: false})
            }
            res.json({
                message: `Order successfully placed with order id ${newOrder.id}`,
                success: true,
                order_id: newOrder.id,
                products: products
            });
        }).catch(err => console.log(err));
    }
    else
    {
        res.json({message:'New order failed', success: false});
    }
});


module.exports = orders;
