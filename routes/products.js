const express = require('express');
const products = express.Router();
const cors = require("cors");
products.use(cors());

const Product = require('../models/Product');
const Category = require('../models/Category');

Category.hasMany(Product, {as: "Products" ,foreignKey:'cat_id'});
Product.belongsTo(Category,{as: "Category", foreignKey: 'cat_id'});



/* GET all products. */
products.get('/', function (req,res) {



    Product.findAll(  {
        include: [{
            model: Category, as: 'Category',

        }],
    })
        .then(products => {
            if(products.length > 0)
            {
                let prodsJSON = JSON.parse(JSON.stringify(products));
                prodsJSON.forEach(element => element.category = element.Category.title);
                res.status(200).json({
                count: prodsJSON.length,
                    products: prodsJSON

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

/* GET SINGLE PRODUCT */
products.get('/:id', function(req,res){
    Product.findOne({
        where: {
            id: req.params.id
        },
        include: [{
            model: Category, as: 'Category',

        }]
    })
        .then(product => {
            if(product) {

                let prodJSON = JSON.parse(JSON.stringify(product));
                prodJSON.category = prodJSON.Category.title;

                res.json(prodJSON);
            } else {
                res.send('Product does not exist');
            }
        })
        .catch(err => {
            res.send('error: '+err)
        })
})



/* GET ALL PRODUCTS FROM ONE CATEGORY */
products.get('/category/:cat_name', (req, res) => {

    Product.findAll({

        include: [{
           model: Category, as: 'Category'
        }],
        where: {
            '$Category.title$': req.params.cat_name
        }
        }
    )
        .then(products => {

            if(products.length > 0) {
                let prodsJSON = JSON.parse(JSON.stringify(products));
                prodsJSON.forEach(element => element.category = element.Category.title);
                res.json(prodsJSON)
            }
            else {
                res.json({message: 'No products found in this category'});
            }
        })
        .catch(err => {
            res.send('error: '+ err );
        })
})



products.post('/new', (req,res) => {
    if(!req.body.title)
    {
        res.status(400)
        res.json({
          error: 'Bad Data'
        })
    }
    else{
        Product.create(req.body)
            .then(data=> {
                res.send(data)
            })
            .catch(err => {
                res.json('error: '+err)
            })
    }
})

module.exports = products;


