// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

import {ERC20Mock} from "@openzeppelin/contracts/mocks/token/ERC20Mock.sol";


contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
        ERC20Mock erc20 = new ERC20Mock();

        erc20.mint(BellumGalaxy, INITIAL_BALANCE);
        
    }

    uint256 constant INITIAL_BALANCE = 10 ether;

    //You can create addresses by casting an uint as address
    address fakeOne = address(1);
    //Or using the `makeAddr()` foundry tool
    address BellumGalaxy = makeAddr("BellumGalaxy");

    function test_distributeEther() public {
        //Sometimes we need fake ether to test.
        //Foundry provides the vm.deal() to distribute balance
        vm.deal(BellumGalaxy, INITIAL_BALANCE);
        //Be aware that if an address already has 1 ether, and
        //you use vm.deal() passing an 2 ether value.
        //it will not sum. The address balance will be 2 ether, not 3 ether.
    }

    function test_verifyingAddressBalance() public {
        vm.deal(BellumGalaxy, INITIAL_BALANCE);
        //During tests, we simulate transaction that costs ether
        //It's common to check for balances before and after transactions.
        //To do it, we use .balance like so
        uint256 bgBalance = BellumGalaxy.balance;
        //you can console it, like JS
        console2.log(bgBalance);
    }

    function test_assertingValues() public {
        uint256 expectedValue = 2;
        uint256 givenValue = 1+1;
        //Through the tests, we need to assert to values automatically
        //We don't have time to spent logging and manually checking
        //Foundry provides some tools like as
        //assertEq() compares two values of same type that must match.
        assertEq(expectedValue, givenValue);
        //assertTrue() it's boolean and it's used to validate a comparisson
        assertTrue(2 > 1);
    }


    event CounterTest_ExampleEvent(uint256 counter);
    function test_emitEvent() public {
        uint256 expectedValue = 1;

        //Foundry tool
        vm.expectEmit();
        //Event that should be emitted with the expected param
        emit CounterTest_ExampleEvent(expectedValue);
        //The function call that will emit the event
        counter.setNumber(0);
    }

    error CounterTest_InputValueTooLow();
    function test_emitCustomError() public{
        //The foundry tool to check for reverts
        //If the custom error returns a param,
        //you just need to put a coma and the expected value emited after .selector
        vm.expectRevert(abi.encodeWithSelector(CounterTest_InputValueTooLow.selector));
        //The function call that will emit the revert
        counter.setNumber(0);
    }

    function test_emitCommonError() public{
        //The foundry tool to check for reverts
        //Just pass the revert message as a string
        vm.expectRevert("Caller is not the owner");
        //The function call that will emit the revert
        counter.setNumber(0);
    }

}
