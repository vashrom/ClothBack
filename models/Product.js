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
            coll_id: {
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
            },
            title_ua: {
                type: Sequelize.STRING
            },
            title_ru: {
                type: Sequelize.STRING
            },
            title_de: {
                type: Sequelize.STRING
            },
            price_ua: {
                type: Sequelize.DECIMAL
            },
            price_ru: {
                type: Sequelize.DECIMAL
            },
            price_de: {
                type: Sequelize.DECIMAL
            },
            description_ua: {
                type: Sequelize.STRING
            },
            description_ru: {
                type: Sequelize.STRING
            },
            description_de: {
                type: Sequelize.STRING
            },
            weight: {
                type: Sequelize.BOOLEAN
            }
        },
        {
            timestamps: false
        }
    );

