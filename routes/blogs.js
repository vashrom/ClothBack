const express = require('express');
const blog = express.Router();
const cors = require("cors");
blog.use(cors());

const Blog = require('../models/Blog');


/* GET all blog elements. */
blog.get('/', function (req,res) {

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

/* GET SINGLE BLOG ELEMENT */
blog.get('/:id', function(req,res){
    Blog.findOne({
        where: {
            id: req.params.id
        }
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


