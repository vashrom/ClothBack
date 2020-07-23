const Sequelize = require('sequelize');
const db = require("../config/db");

module.exports = db.sequelize.define(
    'size',
    {
        id: {
            type: Sequelize.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        XS: {
            type: Sequelize.INTEGER,
        },
        S: {
            type: Sequelize.INTEGER
        },
        M: {
            type: Sequelize.INTEGER
        },
        L: {
            type: Sequelize.INTEGER,
        },
        XL: {
            type: Sequelize.INTEGER
        },

        XXL: {
            type: Sequelize.INTEGER
        },
        product_id: {
            type: Sequelize.INTEGER,
            allowNull: false
        }
    },
    {
        timestamps: false
    }
);

