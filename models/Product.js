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
                type: Sequelize.DECIMAL
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

            xs: {
                type: Sequelize.INTEGER,
            },
            s: {
                type: Sequelize.INTEGER
            },
            m: {
                type: Sequelize.INTEGER
            },
            l: {
                type: Sequelize.INTEGER,
            },
            xl: {
                type: Sequelize.INTEGER
            },
            xxl: {
                type: Sequelize.INTEGER
            }
        },
        {
            timestamps: false
        }
    );

