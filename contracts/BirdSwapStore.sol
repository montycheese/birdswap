// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.10;

import "./IMoonbirds.sol";
import "./IBirdSwap.sol";

contract BirdSwapStore {
    IMoonbirds public moonbirds;
    /// @notice The ask for a given NFT, if one exists
    /// @dev Moonbird token ID => Ask
    mapping(uint256 => IBirdSwap.Ask) public askForMoonbird;
    /// mapping of moonbird token id to the address that transferred it to the escrow from
    mapping(uint256 => address) public moonbirdTransferredFromOwner;

    bool public enforceDefaultRoyalties = false;
    uint256 public marketplaceFeeBps;
    address public marketplaceFeePayoutAddress;
}
