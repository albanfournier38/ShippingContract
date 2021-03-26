const Migrations = artifacts.require("Migrations");
const ShippingContract = artifacts.require("ShippingContract"); //Ajout de la ligne pour le déploiement

module.exports = function (deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(ShippingContract); //Ajout de la ligne pour le déploiement
};
