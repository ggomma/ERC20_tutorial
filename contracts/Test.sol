pragma solidity ^0.5.2; // solidity 0.5.2 버전을 사용하겠다.

contract TEST { // Contract 이름은 TEST1
  string public constant name = "TEST token"; // 토큰의 이름은 TEST token이다.
  string public constant symbol = "TEST"; // TEST라는 명칭을 사용하겠다.
  uint public constant decimals = 18; // 소수점 18자리까지 사용하겠다.
  uint public constant INITIAL_SUPPLY = 1000 * 10 ** decimals; // 초기 발행량은 1000.000000000000000000 이다.
  string constant test = "You can not see this";
}
