// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import "https://github.com/0xcert/ethereum-erc721/src/contracts/tokens/nf-token-metadata.sol";
import "https://github.com/0xcert/ethereum-erc721/src/contracts/ownership/ownable.sol";

contract newNFT is NFTokenMetadata, Ownable {

uint256 public counter;
string public url = "https://ipfs.io/ipfs/QmZfok44eQKnXoM49gog4DNgQobKwZqXYUWR3JyagyqtLN";

  constructor() {
    nftName = "Evmos Olympus Mons NFT";
    nftSymbol = "EOMN";
  }

  function mint() external {
    counter += 1;
    super._mint(msg.sender, counter);
    super._setTokenUri(counter, url);
  }

}
