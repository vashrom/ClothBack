const express = require('express');
const comments = express.Router();
const cors = require("cors");
comments.use(cors());

const Comment = require('../models/Comment');
const CommentCategory = require('../models/CommentCategory');

CommentCategory.hasMany(Comment, {as: "Comments" ,foreignKey:'cat_id'});
Comment.belongsTo(CommentCategory,{as: "CommentCategory", foreignKey: 'cat_id'});

/* GET all comment elements. */
comments.get('/', function (req,res) {

    Comment.findAll({
        include: [
        {
            model: CommentCategory, as: 'CommentCategory'
        }],
})
        .then(comm => {
            if(comm.length > 0)
            {
                let commentsJSON = JSON.parse(JSON.stringify(comm));
                commentsJSON.forEach(element => element.category = element.CommentCategory.title);

                res.status(200).json({

                   comments: commentsJSON

                })
            }
            else{
                res.json({message: 'No comments found'})
            }
        })
        .catch(err => {
            res.send('error: '+ err );
        })

})

/* GET SINGLE BLOG ELEMENT */
comments.get('/:id', function(req,res){
   Comment.findOne({
        where: {
            id: req.params.id
        },
       include: [{
           model: CommentCategory, as: 'CommentCategory'
       }],
    })
        .then(comm => {
            if(comm) {
                let commJSON = JSON.parse(JSON.stringify(comm));
               commJSON.category =commJSON.CommentCategory.title;
                res.json(commJSON);
            } else {
                res.send('No comments found with this id');
            }
        })
        .catch(err => {
            res.send('error: '+err)
        })
})

/* GET ALL COMMENTS FROM ONE CATEGORY */
comments.get('/category/:cat_name', (req, res) => {

    Comment.findAll({

            include: [{
                model: CommentCategory, as: 'CommentCategory'
            }],
            where: {
                '$CommentCategory.title$': req.params.cat_name
            }
        }
    )
        .then(comments => {

            if(comments.length > 0) {
                let commentsJSON = JSON.parse(JSON.stringify(comments));
                commentsJSON.forEach(element => element.category = element.CommentCategory.title);
                res.json(commentsJSON)
            }
            else {
                res.json({message: 'No products found in this category'});
            }
        })
        .catch(err => {
            res.send('error: '+ err );
        })
})

comments.post('/new', (req,res) => {
    if(!req.body)
    {
        res.status(400)
        res.json({
            error: 'Bad Data'
        })
    }
    else{
        Comment.create(req.body)
            .then(data=> {
                res.send(data)
            })
            .catch(err => {
                res.json('error: '+err)
            })
    }
})

comments.put('/:id', (req,res) => {
    if(!req.body.title)
    {
        res.status(400)
        res.json({
            error: 'Bad Data'
        })
    }
    else{
        Comment.update(req.body, { where: {
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


comments.delete('/:id', (req,res)=>{
    Comment.destroy({
            where: {
                id: req.params.id
            },
        }
    );
    return res.json({
        status: "ok",
        data: comments

    }).catch(error)
    {
        res.status(500).json({
            status: "error",
        })
    }

})


module.exports = comments;


