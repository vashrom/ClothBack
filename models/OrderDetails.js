const Sequelize = require('sequelize');
const db = require("../config/db");

module.exports = db.sequelize.define(
    'orders_details',
    {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        order_id: {
            type: Sequelize.INTEGER,
            allowNull: false,
            // references: {
            //     model: 'order',
            //     key: 'id'
            // },
            // field: 'order_id'
        },
        product_id: {
            type: Sequelize.INTEGER
        },
        quantity: {
            type: Sequelize.INTEGER
        },
        size: {
            type: Sequelize.STRING
        },
       color: {
            type: Sequelize.STRING
        },

    },
    {
        timestamps: false
    }




)