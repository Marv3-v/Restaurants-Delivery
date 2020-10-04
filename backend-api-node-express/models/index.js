const dbConfig = require("../config/db.config.js");

const Sequelize = require("sequelize");

const sequelize = new Sequelize(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
    host: dbConfig.HOST,
    dialect: dbConfig.dialect,
    operatorsAliases: false,
});

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.restaurantes = require("./restaurante.model.js")(sequelize, Sequelize);
db.seccionmenu = require("./seccionmenu.model.js")(sequelize, Sequelize);
// Relaciones
// Un restaurante tiene varias secciones/platillos
db.restaurantes.hasMany(db.seccionmenu, { as: "seccionmenu"});
db.seccionmenu.belongsTo(db.restaurantes, {
    foreignKey: "restaurante_id",
    as: "restaurantes"
})

module.exports = db;
