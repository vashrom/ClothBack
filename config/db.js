const Sequelize = require("sequelize");
const db = {}


const sequelize = new Sequelize("mmm", "root" , "macaron", {
    host: "31.131.24.42",
    dialect: "mysql",
    operatorsAliases: false,
    // port: "2003",

    pool: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
    }
})


// const sequelize = new Sequelize("mmm", "root", "", {
//     dialect: "mysql",
//     operatorsAliases: false,

//     pool: {
//         max: 5,
//         min: 0,
//         acquire: 30000,
//         idle: 10000
//     }
// })


db.sequelize = sequelize
db.Sequelize = Sequelize


module.exports = db
//xc
