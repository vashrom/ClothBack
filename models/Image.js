const Sequelize = require('sequelize');
const db = require("../config/db");

module.exports = db.sequelize.define(
    'main_image',
    {
        id: {
            type: Sequelize.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        slider1_1: {
            type: Sequelize.STRING,
            allowNull: false
        },
        slider1_2: {
            type: Sequelize.STRING,
        },
        slider2_1: {
            type: Sequelize.STRING,
            allowNull: false
        },
        slider2_2: {
            type: Sequelize.STRING,
        },
        slider3_1: {
            type: Sequelize.STRING,
            allowNull: false
        },
        slider3_2: {
            type: Sequelize.STRING,
        },
        cat_1: {
            type: Sequelize.STRING,
            allowNull: false
        },
        cat_2: {
            type: Sequelize.STRING,
            allowNull: false
        },
        cat_3: {
            type: Sequelize.STRING,
            allowNull: false
        },
    },
    {
        timestamps: false
    }
);

