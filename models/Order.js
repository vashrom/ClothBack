const Sequelize = require('sequelize');
const db = require("../config/db");

module.exports = db.sequelize.define(
    'order',
    {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true,

        },
        user_id: {
            type: Sequelize.INTEGER
        },
        fname: {
            type: Sequelize.STRING
        },
        lname: {
            type: Sequelize.STRING
        },
        country: {
            type: Sequelize.STRING
        },
        street: {
            type: Sequelize.STRING
        },
        postcode: {
            type: Sequelize.STRING
        },
        city:{
            type: Sequelize.STRING
        },
        email: {
            type: Sequelize.STRING
        },
        phone: {
            type: Sequelize.STRING
        },
        message: {
            type: Sequelize.STRING
        }
    },
    {
        timestamps: false
    }




)