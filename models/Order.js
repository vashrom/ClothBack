const Sequelize = require('sequelize');
const db = require("../config/db");

module.exports = db.sequelize.define(
    'order',
    {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            //field: 'ID'

        },
        user_id: {
            type: Sequelize.INTEGER
        }
    },
    {
        timestamps: false
    }




)