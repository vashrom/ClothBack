const Sequelize = require('sequelize');
const db = require("../config/db");

module.exports = db.sequelize.define(
    'category',
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
        title_ua: {
            type: Sequelize.STRING
        },
        title_ru: {
            type: Sequelize.STRING
        },
        title_de: {
            type: Sequelize.STRING
        },
    },
    {
        timestamps: false
    }




)