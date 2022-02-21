// SPDX-License-Identifier: Unlicensed

pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

contract Marketplace {

   uint256 public itemCounter;
   address payable owner;
   uint256 public listingPrice;

   struct MarketItem {
      uint256 itemId;
      address nftContractAddress;
      uint256 tokenId:
      address payable seller;
      adress payable owner;
      uint256 price;
      bool isSold;
      bool isPresent;
   }

   mapping(uint256 => MarketItem) private marketItems;


   event MarketItemListed(
      uint256 indexed itemId,
      address indexed nftContractAddress,
      uint256 indexed tokenId,
      address seller,
      address owner,
      uint256 price
   );
   
   constructor() {
      itemCounter = 0;
      owner = payable(msg.sender);
      listingPrice = 0.01 ether;
   }

}
