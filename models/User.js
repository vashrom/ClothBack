const Sequelize = require('sequelize');
const db = require("../config/db");




module.exports = db.sequelize.define(
    'user',
    {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        password:{
            type: Sequelize.STRING
        },
        email:{
            type: Sequelize.STRING
        },
        first_name:{
            type: Sequelize.STRING
        },
        last_name:{
            type: Sequelize.STRING
        },
        role:{
            type: Sequelize.INTEGER
        },
        created:{
            type: Sequelize.DATE,
            defaultValue: Sequelize.NOW
        }
    },

    {
        timestamps: false
    }
)