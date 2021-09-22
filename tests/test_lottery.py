# 0.019
# 190000000000000000
from eth_utils import to_wei
from brownie import Lottery, accounts, config
from web3 import Web3

def test_get_entrance_fee():
    account = accounts[0]
    # lottery = Lottery.deploy(config["networks"][network.show_active()]["eth_usd_price_feed"], {"from": account},)
    lottery = Lottery.deploy('0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419', {"from": account},)
    assert lottery.getEntranceFee() > Web3.toWei(0.010, "ether")
    assert lottery.getEntranceFee() < Web3.toWei(0.030, "ether")