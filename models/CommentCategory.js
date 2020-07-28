const Sequelize = require('sequelize');
const db = require("../config/db");

module.exports = db.sequelize.define(
    'comment_category',
    {
        id: {
            type: Sequelize.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        title: {
            type: Sequelize.STRING
        }
    },
    {
        timestamps: false
    }




)