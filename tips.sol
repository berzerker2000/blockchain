//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;//ใส่่version

contract tips{//ประกาศชื่อ contract
    
    address owner;//เก็บที่อยู่
    Waitress [] waitress;

    constructor() {// code ใส่ Blockchain วิ่งครั้งเดียวไม่ใส่ชือ เพราะ รู้ว่าวิ่งครั้งแรกอยู่หัวนี้
        owner = msg.sender;//ใครใส่ Smart contract ใน block chain คือ owner
    }
    //1. put fund in smart contract

    function addtips() payable public {

    }//สามารถรับเงินได้ คือ payable เป็น public คือใครเอาทิป ให้ได้หมด
    //2. view balance
     function viewtips() public view returns(uint){ 
        return address(this).balance;//ดูเงินใน smart contract
     }

    //3.1 add structure waitress
    struct Waitress {
    address payable walletAddress;
    string name;
}

    //3.2 add waitress
function addWaitress(address payable walletAddress,string memory name) public {
    bool waitressExist = false;

    if(waitress.length >=1){
    for(uint i=0; i <waitress.length; i++){
    if(waitress[i].walletAddress == walletAddress){
        waitressExist = true;
    }
  }
    
 }

     if(waitressExist==false){
    waitress.push(Waitress(walletAddress,name));
    }
}
    //4. remove user

    //5. view user
    function viewWaitress() public view returns(Waitress[] memory){
        return waitress;
    } 
    //6. distribute tips
}