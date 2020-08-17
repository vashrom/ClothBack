const express = require('express');
const images = express.Router();
const cors = require("cors");
images.use(cors());

const Image = require('../models/Image');




/* GET all images elements. */
images.get('/', function (req,res) {

    Image.findAll()
        .then(images => {
            if(images.length > 0)
            {
                res.status(200).json({
                    images: images
                })
            }
            else{
                res.json({message: 'No images found'})
            }
        })
        .catch(err => {
            res.send('error: '+ err );
        })

})






images.post('/new', (req,res) => {
    if(!req.body.title)
    {
        res.status(400)
        res.json({
            error: 'Bad Data'
        })
    }
    else{
        Image.create(req.body)
            .then(data=> {
                res.send(data)
            })
            .catch(err => {
                res.json('error: '+err)
            })
    }
})


images.put('/:id', (req,res) => {

        Image.update(req.body, { where: {
                id: req.params.id
            }})
            .then(data=> {
                res.send(data)
            })
            .catch(err => {
                res.json('error: '+err)
            })

});


images.delete('/:id', (req,res)=>{
    Image.destroy({
            where: {
                id: req.params.id
            },
        }
    );
    return res.json({
        status: "ok",
        data: images

    })
})

module.exports = images;


