pragma solidity ^0.4.9;
contract Token {
  mapping (address => uint) public balancesOf;
  address public owner;
  function Token() public{
    owner = msg.sender;
    balancesOf[msg.sender] = 10000;
  }

  function transfer(address _to, uint _value) public{
    balancesOf[msg.sender] -= _value;
    balancesOf[_to] += _value;
  }

  function mint(uint _amount) public{
    balancesOf[owner] += _amount;
  }
}
