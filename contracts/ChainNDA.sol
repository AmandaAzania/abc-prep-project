// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ChainNDA {
    address public partyA;
    address public partyB;

    bytes32 public termsHash;

    bool public partyAAccepted;
    bool public partyBAccepted;

    constructor(address _partyB, bytes32 _termsHash) {
        partyA = msg.sender;
        partyB = _partyB;
        termsHash = _termsHash;
    }

    function acceptAgreement() public {
        require(
            msg.sender == partyA || msg.sender == partyB,
            "Not an agreement party"
        );

        if (msg.sender == partyA) {
            partyAAccepted = true;
        }

        if (msg.sender == partyB) {
            partyBAccepted = true;
        }
    }

    function isFullyAccepted() public view returns (bool) {
        return partyAAccepted && partyBAccepted;
    }
}
