pragma solidity ^0.8.0;

contract EthToBtcConverter {

    // The exchange rate of ETH to BTC
    uint256 public exchangeRate;

    constructor(uint256 _exchangeRate) {
        exchangeRate = _exchangeRate;
    }

    // Converts a given amount of ETH to BTC
    function convertEthToBtc(uint256 _ethAmount) public view returns (uint256) {
        return _ethAmount * exchangeRate;
    }

    // Converts a given amount of BTC to ETH
    function convertBtcToEth(uint256 _btcAmount) public view returns (uint256) {
        return _btcAmount / exchangeRate;
    }
}