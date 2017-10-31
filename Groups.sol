pragma solidity ^0.4.0;

library Groups{
    
    struct Group{
        mapping(address => bool) members;
    }
    
    function addMember(Group storage self, address addr) returns (bool){
        if(self.members[addr]){
            return false; // already member
        }
        self.members[addr] = true;
        return true;
    }
    
    function delMember(Group storage self, address addr) returns (bool){
        if(!self.members[addr]){
            return false; // not a member
        }
        self.members[addr] = false;
        return true;
    }
}