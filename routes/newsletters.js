const express = require('express');
const news = express.Router();
const cors = require("cors");
news.use(cors());

const News = require('../models/Newsletter');


news.get('/', function (req,res) {

    News.findAll()
        .then(news => {
            if(news.length > 0)
            {
                res.status(200).json({
                    news: news
                })
            }
            else{
                res.json({message: 'No subscribers found'})
            }
        })
        .catch(err => {
            res.send('error: '+ err );
        })

})




news.post('/new', (req,res) => {

        News.create(req.body)
            .then(data=> {
                res.send(data)
            })
            .catch(err => {
                res.json('error: '+err)
            })

})

news.delete('/:id', (req,res)=>{
    News.destroy({
            where: {
                id: req.params.id
            },
        }
    );
    return res.json({
        status: "ok",
        data: news

    })
})



module.exports = news;


