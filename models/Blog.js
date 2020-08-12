const Sequelize = require('sequelize');
const db = require("../config/db");

module.exports = db.sequelize.define(
    'blog',
    {
        id: {
            type: Sequelize.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        title: {
            type: Sequelize.STRING,
            allowNull: false
        },
        title_ua: {
            type: Sequelize.STRING,
            allowNull: false
        },
        title_ru: {
            type: Sequelize.STRING,
            allowNull: false
        },
        title_de: {
            type: Sequelize.STRING,
            allowNull: false
        },

        image: {
            type: Sequelize.STRING
        },
        images: {
            type: Sequelize.STRING
        },
        text: {
            type: Sequelize.STRING,
            allowNull: false
        },
        text_ua: {
            type: Sequelize.STRING,
            allowNull: false
        },
        text_ru: {
            type: Sequelize.STRING,
            allowNull: false
        },
        text_de: {
            type: Sequelize.STRING,
            allowNull: false
        },
        category: {
            type: Sequelize.STRING
        },
        category_ua: {
            type: Sequelize.STRING
        },
        category_ru: {
            type: Sequelize.STRING
        },
        category_de: {
            type: Sequelize.STRING
        },
        date: {
            type: Sequelize.STRING
        }
    },
    {
        timestamps: false
    }
);

