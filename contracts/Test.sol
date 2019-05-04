pragma solidity ^0.5.2;

import 'openzeppelin-solidity/contracts/token/ERC20/ERC20Pausable.sol';

contract TEST is ERC20Pausable {
  string public constant name = "TEST token";
  string public constant symbol = "TEST";
  uint public constant decimals = 18;
  uint public constant INITIAL_SUPPLY = 1000 * (10 ** decimals);

  constructor() public {
    _mint(msg.sender, INITIAL_SUPPLY);
  }
}
