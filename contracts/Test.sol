pragma solidity ^0.5.2;

import 'openzeppelin-solidity/contracts/token/ERC20/ERC20Pausable.sol';

contract TEST is ERC20Pausable {
  string public constant name = "TEST token";
  string public constant symbol = "TEST";
  uint public constant decimals = 18;
  uint public constant INITIAL_SUPPLY = 1000 * (10 ** decimals);

  mapping (address => uint256) public airDropHistory;
  event AirDrop(address _receiver, uint256 _amount);

  constructor() public {
    _mint(msg.sender, INITIAL_SUPPLY);
  }

  function dropToken(address[] memory receivers, uint256[] memory values) public {
    require(receivers.length != 0);
    require(receivers.length == values.length);

    for (uint256 i = 0; i < receivers.length; i++) {
      address receiver = receivers[i];
      uint256 amount = values[i];

      transfer(receiver, amount);
      airDropHistory[receiver] += amount;

      emit AirDrop(receiver, amount);
    }
  }
}
