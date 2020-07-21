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
        category: {
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

