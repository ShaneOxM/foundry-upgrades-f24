// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import { Test } from "lib/forge-std/src/Test.sol";
import { DeployBox } from "script/DeployBox.s.sol";
import { UpgradeBox } from "script/UpgradeBox.s.sol";
import { BoxV1 } from "src/BoxV1.sol";
import { BoxV2 } from "src/BoxV2.sol";


contract DeployAndUpgradeTest is Test {
    DeployBox public deployer;
    UpgradeBox public upgrader;
    address public OWNER = makeAddr("owner");

    address public proxy;



    function setUp() public {
        deployer = new DeployBox();
        upgrader = new UpgradeBox();
        proxy = deployer.run(); // right now, points to BoxV1

    }

    function testProxyStartsAsBoxV1() public {
        vm.expectRevert();
        BoxV2(proxy).setNumber(7); // BoxV1 does not have a setNumber function, if we try to call it on the proxy, it should revert

    }

    function testUpgrades() public {
        BoxV2 box2 = new BoxV2();

        upgrader.upgradeBox(proxy, address(box2));

        uint256 expectedValue = 2;
        assertEq(expectedValue, BoxV2(proxy).version()); // If this works, on the proxy address that originally pointed to BoxV1, now points to BoxV2

        BoxV2(proxy).setNumber(7); // BoxV2 has a setNumber function
        assertEq(7, BoxV2(proxy).getNumber()); // If this works, then we have successfully upgraded the contract
    }
}