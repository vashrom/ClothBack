const Sequelize = require('sequelize');
const db = require("../config/db");

module.exports = db.sequelize.define(
        'product',
        {
            id: {
                type: Sequelize.INTEGER,
                allowNull: false,
                primaryKey: true,
                autoIncrement: true
            },
            title: {
                type: Sequelize.STRING
            },
            image: {
                type: Sequelize.STRING
            },
            images: {
                type: Sequelize.STRING
            },
            description: {
                type: Sequelize.STRING
            },
            price: {
                type: Sequelize.INTEGER
            },
            quantity: {
                type: Sequelize.INTEGER
            },
            short_desc: {
                type: Sequelize.STRING
            },
            cat_id: {
                type: Sequelize.INTEGER,
            },
            size_id: {
                type: Sequelize.INTEGER,
            }
        },
        {
            timestamps: false
        }
    );

