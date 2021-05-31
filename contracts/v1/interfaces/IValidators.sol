pragma solidity >=0.6.0 <0.8.0;

import "./IVotePool.sol";

interface IValidators {
    function improveRanking() external ;
    function lowerRanking() external ;
    function removeRanking() external;
    function withdrawReward() external ;
    function votePools(address validator) external view returns (IVotePool);
    function removeValidatorIncoming(address validator) external;
}

enum Operation {Distribute, UpdateValidators}