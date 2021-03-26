// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

//Création du contrat ShippingContract
contract ShippingContract {
    
    //Création d'une variable pour l'état du colis avec plusieurs valeurs prédéfinies
    enum StateCommand {Pending, Shipped, Delivered}
    StateCommand status;
    StateCommand constant defaultChoice = StateCommand.Pending; //Fixe la valeur par défaut sur Pending

    //Création des évènements
    event Creation(uint Id, StateCommand);
    event Shipped(uint Id, StateCommand);
    event Delivered(uint Id, StateCommand);

    //Création de la structure du colis
    struct colis {
        uint Id;
        string status;
    }

    //Fonction pour créer une nouvelle commande
    function newCommand(uint Id) external payable {
        emit Creation(Id, status);

    }

    //Fonction pour passer l'état du colis à Shipped
    function setShipped(uint Id) public {
        status = StateCommand.Shipped;
        emit Shipped(Id, status);

    }

    //Fonction pour passer l'état du colis à Delivered
    function setDelivered(uint Id) public {
        status = StateCommand.Delivered;
        emit Delivered(Id, status);

    }

    //Fonction pour obtenir l'état du colis
    function getStatus() public view returns (uint) {
        return uint(status);

    }

}