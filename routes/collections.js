const express = require('express');
const collection = express.Router();


const Collection = require('../models/Collection');


/* GET all blog elements. */
collection.get('/', function (req,res) {

    Collection.findAll()
        .then(collection => {
            if(collection.length > 0)
            {

                let CollectionJSON = JSON.parse(JSON.stringify(collection));
                CollectionJSON.forEach(element => element.title_en = element.title);
                res.status(200).json({
                    collection:  CollectionJSON
                })
            }
            else{
                res.json({message: 'No collections found'})
            }
        })
        .catch(err => {
            res.send('error: '+ err );
        })

})



collection.get('/:lang', (req, res) => {

    let lang = req.params.lang

    Collection.findAll({
        attributes: ['id', 'title_' + lang, 'title']
    }).then(collection => {
        if (collection) {
            let CollectionJSON = JSON.parse(JSON.stringify(collection));

            switch (lang) {
                case 'ua': {
                    CollectionJSON.forEach(element => element.title_en = element.title);

                    CollectionJSON.forEach(element => element.title = element.title_ua);
                }
                    break;
                case 'ru': {
                    CollectionJSON.forEach(element => element.title_en = element.title);

                    CollectionJSON.forEach(element => element.title = element.title_ru);
                }
                    break;
                case 'de': {
                    CollectionJSON.forEach(element => element.title_en = element.title);

                    CollectionJSON.forEach(element => element.title = element.title_de);
                }
                    break;

            }

            res.json({collection: CollectionJSON})
        } else {
            res.send('Collections does not exist');
        }
    }).catch(err => {
        res.send('error: ' + err)
    })
})


collection.post('/new', (req,res) => {
    Collection.create(req.body)
        .then(data=> {
            res.send(data)
        })
        .catch(err => {
            res.json('error: '+err)
        })
})



collection.put('/:id', (req,res) => {
    if(!req.body.title)
    {
        res.status(400)
        res.json({
            error: 'Bad Data'
        })
    }
    else{
        Collection.update(req.body, { where: {
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


collection.delete('/:id', (req,res)=>{
    Collection.destroy({
            where: {
                id: req.params.id
            },
        }
    );
    return res.json({
        status: "ok",
        data: collection

    })
})


module.exports = collection;


