const express = require('express');
const products = express.Router();
const cors = require("cors");
products.use(cors());

const Product = require('../models/Product');
const Category = require('../models/Category');

Category.hasMany(Product, {as: "Products" ,foreignKey:'cat_id'});
Product.belongsTo(Category,{as: "Category", foreignKey: 'cat_id'});




/* GET all products. */
products.get('/en', function (req,res) {

    Product.findAll(  {
        include: [
            {
                model: Category, as: 'Category'
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

products.get('/ua', function (req,res) {

    Product.findAll(  {
        include: [
            {
                model: Category, as: 'Category'
            }],
        attributes: ['id','title_ua','image','images','description_ua','price_ua','quantity', 'cat_id','xs','s','m','l','xl','xxl']

    })
        .then(products => {
            if(products.length > 0)
            {
                let prodsJSON = JSON.parse(JSON.stringify(products));
                prodsJSON.forEach(element => element.category = element.Category.title_ua);
                prodsJSON.forEach(element =>  element.title = element.title_ua);
                prodsJSON.forEach(element =>  element.price = element.price_ua);
                prodsJSON.forEach(element =>  element.description = element.description_ua);

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

products.get('/ru', function (req,res) {

    Product.findAll(  {
        include: [
            {
                model: Category, as: 'Category'
            }],
        attributes: ['id','title_ru','image','images','description_ru','price_ru','quantity', 'cat_id','xs','s','m','l','xl','xxl']

    })
        .then(products => {
            if(products.length > 0)
            {
                let prodsJSON = JSON.parse(JSON.stringify(products));
                prodsJSON.forEach(element => element.category = element.Category.title_ru);
                prodsJSON.forEach(element =>  element.title = element.title_ru);
                prodsJSON.forEach(element =>  element.price = element.price_ru);
                prodsJSON.forEach(element =>  element.description = element.description_ru);

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

products.get('/de', function (req,res) {

    Product.findAll(  {
        include: [
            {
                model: Category, as: 'Category'
            }],
        attributes: ['id','title_de','image','images','description_de','price_de','quantity', 'cat_id','xs','s','m','l','xl','xxl']

    })
        .then(products => {
            if(products.length > 0)
            {
                let prodsJSON = JSON.parse(JSON.stringify(products));
                prodsJSON.forEach(element => element.category = element.Category.title_de);
                prodsJSON.forEach(element =>  element.title = element.title_de);
                prodsJSON.forEach(element =>  element.price = element.price_de);
                prodsJSON.forEach(element =>  element.description = element.description_de);

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
products.get('/en/:id', function(req,res){
    Product.findOne({
        where: {
            id: req.params.id
        },
        include: [{
            model: Category, as: 'Category',

        }],
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

products.get('/ua/:id', function(req,res){
    Product.findOne({
        where: {
            id: req.params.id
        },
        include: [{
            model: Category, as: 'Category'
        }],
        attributes: ['id','title_ua','image','images','description_ua','price_ua','quantity', 'cat_id','xs','s','m','l','xl','xxl']

    })
        .then(product => {
            if(product) {
                let prodJSON = JSON.parse(JSON.stringify(product));
                prodJSON.category = prodJSON.Category.title_ua;
                prodJSON.title = prodJSON.title_ua;
                prodJSON.price = prodJSON.price_ua;
                prodJSON.description = prodJSON.description_ua;

                res.json(prodJSON);
            } else {
                res.send('Product does not exist');
            }
        })
        .catch(err => {
            res.send('error: '+err)
        })
})

products.get('/ru/:id', function(req,res){
    Product.findOne({
        where: {
            id: req.params.id
        },
        include: [{
            model: Category, as: 'Category'
        }],
        attributes: ['id','title_ru','image','images','description_ru','price_ru','quantity', 'cat_id','xs','s','m','l','xl','xxl']

    })
        .then(product => {
            if(product) {
                let prodJSON = JSON.parse(JSON.stringify(product));
                prodJSON.category = prodJSON.Category.title_ru;
                prodJSON.title = prodJSON.title_ru;
                prodJSON.price = prodJSON.price_ru;
                prodJSON.description = prodJSON.description_ru;

                res.json(prodJSON);
            } else {
                res.send('Product does not exist');
            }
        })
        .catch(err => {
            res.send('error: '+err)
        })
})

products.get('/de/:id', function(req,res){
    Product.findOne({
        where: {
            id: req.params.id
        },
        include: [{
            model: Category, as: 'Category'
        }],
        attributes: ['id','title_de','image','images','description_de','price_de','quantity', 'cat_id','xs','s','m','l','xl','xxl']

    })
        .then(product => {
            if(product) {
                let prodJSON = JSON.parse(JSON.stringify(product));
                prodJSON.category = prodJSON.Category.title_de;
                prodJSON.title = prodJSON.title_de;
                prodJSON.price = prodJSON.price_de;
                prodJSON.description = prodJSON.description_de;

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
products.get('/en/category/:cat_name', (req, res) => {

    Product.findAll({

        include: [{
           model: Category, as: 'Category'
        }],
        where: {
            '$Category.title$': req.params.cat_name
        },

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

products.get('/ua/category/:cat_name', (req, res) => {

    Product.findAll({

            include: [{
                model: Category, as: 'Category'
            }],
            where: {
                '$Category.title$': req.params.cat_name
            },
            attributes: ['id','title_ua','image','images','description_ua','price_ua','quantity', 'cat_id','xs','s','m','l','xl','xxl']
        }
    )
        .then(products => {

            if(products.length > 0) {
                let prodsJSON = JSON.parse(JSON.stringify(products));
                prodsJSON.forEach(element => element.category = element.Category.title_ua);
                prodsJSON.forEach(element =>  element.title = element.title_ua);
                prodsJSON.forEach(element =>  element.price = element.price_ua);
                prodsJSON.forEach(element =>  element.description = element.description_ua);

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

products.get('/ru/category/:cat_name', (req, res) => {

    Product.findAll({

            include: [{
                model: Category, as: 'Category'
            }],
            where: {
                '$Category.title$': req.params.cat_name
            },
            attributes: ['id','title_ru','image','images','description_ru','price_ru','quantity', 'cat_id','xs','s','m','l','xl','xxl']
        }
    )
        .then(products => {

            if(products.length > 0) {
                let prodsJSON = JSON.parse(JSON.stringify(products));
                prodsJSON.forEach(element => element.category = element.Category.title_ru);
                prodsJSON.forEach(element =>  element.title = element.title_ru);
                prodsJSON.forEach(element =>  element.price = element.price_ru);
                prodsJSON.forEach(element =>  element.description = element.description_ru);

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

products.get('/de/category/:cat_name', (req, res) => {

    Product.findAll({

            include: [{
                model: Category, as: 'Category'
            }],
            where: {
                '$Category.title$': req.params.cat_name
            },
            attributes: ['id','title_de','image','images','description_de','price_de','quantity', 'cat_id','xs','s','m','l','xl','xxl']
        }
    )
        .then(products => {

            if(products.length > 0) {
                let prodsJSON = JSON.parse(JSON.stringify(products));
                prodsJSON.forEach(element => element.category = element.Category.title_de);
                prodsJSON.forEach(element =>  element.title = element.title_de);
                prodsJSON.forEach(element =>  element.price = element.price_de);
                prodsJSON.forEach(element =>  element.description = element.description_de);

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



products.put('/:id', (req,res) => {
    if(!req.body.title)
    {
        res.status(400)
        res.json({
            error: 'Bad Data'
        })
    }
    else{
        Product.update(req.body, { where: {
                id: req.params.id
            }})
            .then(data=> {
                res.send(data)
            })
            .catch(err => {
                res.json('error: '+err)
            })
    }
});


products.delete('/:id', (req,res)=>{
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

module.exports = products;


