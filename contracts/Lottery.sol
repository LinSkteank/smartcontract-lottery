// SPDX-Licence-Identifier: MIT
pragma solidity ^0.6.6;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";

contract Lottery {

    address payable[] public players;
    uint public usdEntryFee;
    AggregatorV3Interface internal ethUsdPriceFeed;


    constructor(address _priceFeedAddress) public {
        usdEntryFee = 50 * (10 ** 18);
        ethUsdPriceFeed = AggregatorV3Inteface();

    }



    function enter() public payable{

        players.push(msg.sender);
    }


    function getEntranceFee() public view returns(uint256) {}


    function startLottery() public {}


    function endLottery() public {}


    
}

