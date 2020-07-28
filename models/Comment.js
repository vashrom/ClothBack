const Sequelize = require('sequelize');
const db = require("../config/db");

module.exports = db.sequelize.define(
    'comment',
    {
        id: {
            type: Sequelize.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        name: {
            type: Sequelize.STRING
        },
        email: {
            type: Sequelize.STRING
        },
        text: {
            type: Sequelize.STRING
        }

    },
    {
        timestamps: false
    }
);

