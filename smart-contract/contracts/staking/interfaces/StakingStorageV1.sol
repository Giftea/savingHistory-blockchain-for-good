// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.4;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "./IStaking.sol";

abstract contract StakingStorageV1 is IStaking {
    IERC20 public override SAVEH;
    uint256 public override cooldown;

    uint256 public override currentTotalAmount;

    mapping(address => Holder) internal _holders;
    EnumerableSet.AddressSet internal stakeholdersList;
}