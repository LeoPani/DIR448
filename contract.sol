pragma solidity >=0.4.21 <0.6.0;

contract Migrations {
    address public Contratante = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address public payable Banda = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
    uint public last_completed_migration;

    constructor() public {
        Contratante = msg.sender;
    }

    modifier restricted() {
        if (chuva == true) _;
    }

    function setCompleted(uint completed) public restricted {
        last_completed_migration = completed;
    }

    function upgrade(address new_address) public restricted {
        Migrations upgraded = Migrations(new_address);
        upgraded.setCompleted(last_completed_migration);
    }
}
