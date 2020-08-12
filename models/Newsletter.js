const Sequelize = require('sequelize');
const db = require("../config/db");

module.exports = db.sequelize.define(
    'newsletter',
    {
        id: {
            type: Sequelize.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        email: {
            type: Sequelize.STRING
        },

    },
    {
        timestamps: false
    }




)