pragma solidity ^0.4.18;

import "./SetLibrary.sol";

contract SetUsageExample
{
    using SetLibrary for SetLibrary.Set;
    
    SetLibrary.Set private numberCollection;
    
    function addNumber(uint256 number) external
    {
        numberCollection.add(number);
    }
    
    function removeNumber(uint256 number) external
    {
        numberCollection.remove(number);
    }
    
    function getSize() external view returns (uint256 size)
    {
        return numberCollection.size();
    }
    
    function containsNumber(uint256 number) external view returns (bool contained)
    {
        return numberCollection.contains(number);
    }
    
    function getNumberAtIndex(uint256 index) external view returns (uint256 number)
    {
        return numberCollection.values[index];
    }
}
