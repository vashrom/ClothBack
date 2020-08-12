const express = require('express');
const blog = express.Router();
const cors = require("cors");
blog.use(cors());

const Blog = require('../models/Blog');




/* GET all blog elements. */
blog.get('/en', function (req,res) {

    Blog.findAll()
        .then(blog => {
            if(blog.length > 0)
            {
                res.status(200).json({
                    blog: blog
                })
            }
            else{
                res.json({message: 'No blog articles found'})
            }
        })
        .catch(err => {
            res.send('error: '+ err );
        })

})




blog.get('/:lang', function (req,res) {

    let lang = req.params.lang


    Blog.findAll({
        attributes: ['id', 'title_' + lang, 'image', 'images','text_'+lang, 'category_'+lang ,'date' ]
    }
)
        .then(blog => {
            if(blog.length > 0)
            {
                let BlogJSON = JSON.parse(JSON.stringify(blog));
                switch (lang) {
                    case 'ua': {
                        BlogJSON.forEach(element => element.title = element.title_ua);
                        BlogJSON.forEach(element => element.text = element.text_ua);
                        BlogJSON.forEach(element => element.category = element.category_ua);

                    }
                        break;
                    case 'de': {
                        BlogJSON.forEach(element => element.title = element.title_de);
                        BlogJSON.forEach(element => element.text = element.text_de);
                        BlogJSON.forEach(element => element.category = element.category_de);
                    }
                        break;
                    case 'ru': {
                        BlogJSON.forEach(element => element.title = element.title_ru);
                        BlogJSON.forEach(element => element.text = element.text_ru);
                        BlogJSON.forEach(element => element.category = element.category_ru);
                    }
                        break;

                }

                res.status(200).json({
                    blog:  BlogJSON
                })
            }
            else{
                res.json({message: 'No blog articles found'})
            }
        })
        .catch(err => {
            res.send('error: '+ err );
        })

})

/* GET SINGLE BLOG ELEMENT */
blog.get('/en/:id', function(req,res){
    Blog.findOne({
        where: {
            id: req.params.id
        },
    })
        .then(blog => {
            if(blog) {

               res.json(blog);
            } else {
                res.send('No blog articles found with this id');
            }
        })
        .catch(err => {
            res.send('error: '+err)
        })
})


/* GET SINGLE TRANSLATE BLOG ELEMENT */
blog.get('/:lang/:id', function(req,res){

    let lang = req.params.lang

    Blog.findOne({
        where: {
            id: req.params.id
        },
        attributes: ['id', 'title_' + lang, 'image', 'images','text_'+lang, 'category_'+lang ,'date' ]
    })
        .then(blog => {
            if(blog) {
                let BlogJSON = JSON.parse(JSON.stringify(blog));
                switch (lang) {
                    case 'ua': {
                        BlogJSON.title = BlogJSON.title_ua;
                        BlogJSON.text = BlogJSON.text_ua;
                        BlogJSON.category = BlogJSON.category_ua;

                    }
                        break;
                    case 'de': {
                        BlogJSON.title = BlogJSON.title_de;
                        BlogJSON.text = BlogJSON.text_de;
                        BlogJSON.category = BlogJSON.category_de;
                    }
                        break;
                    case 'ru': {
                        BlogJSON.title = BlogJSON.title_ru;
                        BlogJSON.text = BlogJSON.text_ru;
                        BlogJSON.category = BlogJSON.category_ru;
                    }
                        break;

                }

                res.json(BlogJSON);
            } else {
                res.send('No blog articles found with this id');
            }
        })
        .catch(err => {
            res.send('error: '+err)
        })
})


blog.post('/new', (req,res) => {
    if(!req.body.title)
    {
        res.status(400)
        res.json({
            error: 'Bad Data'
        })
    }
    else{
        Blog.create(req.body)
            .then(data=> {
                res.send(data)
            })
            .catch(err => {
                res.json('error: '+err)
            })
    }
})


blog.put('/:id', (req,res) => {
    if(!req.body.title)
    {
        res.status(400)
        res.json({
            error: 'Bad Data'
        })
    }
    else{
        Blog.update(req.body, { where: {
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


blog.delete('/:id', (req,res)=>{
    Blog.destroy({
            where: {
                id: req.params.id
            },
        }
    );
    return res.json({
        status: "ok",
        data: blog

    })
})

module.exports = blog;


