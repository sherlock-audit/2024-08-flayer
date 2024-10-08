// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ERC721} from '@openzeppelin/contracts/token/ERC721/ERC721.sol';
import {ERC721Enumerable} from '@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol';


contract ERC721Mock is ERC721Enumerable {
    constructor() ERC721('Mock', 'MOCK') {}

    function mint(address to, uint tokenId) public {
        _mint(to, tokenId);
    }

    function burn(uint tokenId) public {
        _burn(tokenId);
    }
}
