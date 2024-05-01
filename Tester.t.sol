// SPDX-License-Identifier: MIT
pragma solidity >=0.6.2 <0.9.0;

import "../src/Tester.sol";
import "../lib/forge-std/src/Test.sol";

contract testToken is Test{
                
               Tester public tester;

               function setUp() public{
                            tester = new Tester();
               }

               function testtransfer() public{
               address a = address(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2); 
        tester.transfer(a, 10);
        assertEq(tester.balanceOf(a), 10);    
                            
               }

               function testbalanceOf() internal{
                            assertEq(tester.balanceOf(msg.sender), 100);
               }


}
