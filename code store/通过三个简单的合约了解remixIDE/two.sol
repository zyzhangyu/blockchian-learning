pragma solidity ^0.4.9;

contract Token2 {
  uint[] public balancesOf;
  function Token() public{
    balancesOf.push(100);
    balancesOf.push(200);
  }

  function transfer(uint _from, uint _to, uint _amount) public {
    balancesOf[_from] -= _amount;
    balancesOf[_to] += _amount;
  }

  function mint(uint value) public {
    balancesOf[0] += value;
  }
}
