const express = require('express');
const category = express.Router();
const cors = require("cors");
category.use(cors());

const Category = require('../models/Category');


/* GET all blog elements. */
category.get('/', function (req,res) {

    Category.findAll()
        .then(category => {
            if(category.length > 0)
            {

                let CategoryJSON = JSON.parse(JSON.stringify(category));
                CategoryJSON.forEach(element => element.title_en = element.title);
                res.status(200).json({
                    category:  CategoryJSON
                })
            }
            else{
                res.json({message: 'No categories found'})
            }
        })
        .catch(err => {
            res.send('error: '+ err );
        })

})

let lang = 'ua';

category.get('/:lang', (req, res) => {

    lang = req.params.lang

    Category.findAll({
                attributes: ['id', 'title_' + lang, 'title', 'coll_id']
    }).then(category => {
        if (category) {
            let CategoryJSON = JSON.parse(JSON.stringify(category));

            switch (lang) {
                case 'ua': {
                    CategoryJSON.forEach(element => element.title_en = element.title);

                    CategoryJSON.forEach(element => element.title = element.title_ua);
                }
                    break;
                case 'ru': {
                    CategoryJSON.forEach(element => element.title_en = element.title);

                    CategoryJSON.forEach(element => element.title = element.title_ru);
                }
                    break;
                case 'de': {
                    CategoryJSON.forEach(element => element.title_en = element.title);

                    CategoryJSON.forEach(element => element.title = element.title_de);
                }
                    break;

            }

            res.json({category: CategoryJSON})
        } else {
            res.send('Orders does not exist');
        }
    }).catch(err => {
        res.send('error: ' + err)
    })
})


category.post('/new', (req,res) => {

        Category.create(req.body)
            .then(data=> {
                res.send(data)
            })
            .catch(err => {
                res.json('error: '+err)
            })

})



category.put('/:id', (req,res) => {
    if(!req.body.title)
    {
        res.status(400)
        res.json({
            error: 'Bad Data'
        })
    }
    else{
        Category.update(req.body, { where: {
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


category.delete('/:id', (req,res)=>{
    Category.destroy({
            where: {
                id: req.params.id
            },
        }
    );
    return res.json({
        status: "ok",
        data: category

    })
})


module.exports = category;


