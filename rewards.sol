pragma solidity ^0.8.0;

contract InteractionLogger {
    struct Interaction {
        address user;
        uint256 timestamp;
    }
    
    Interaction[] public interactions;
    
    event InteractionLogged(address indexed user, uint256 timestamp);
    
    function logInteraction() public {
        interactions.push(Interaction(msg.sender, block.timestamp));
        emit InteractionLogged(msg.sender, block.timestamp);
    }
    
    function getInteractionCount() public view returns (uint256) {
        return interactions.length;
    }
}
