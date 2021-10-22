pragma solidity >=0.4.22 <0.9.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Every single computation literally costs you money (gas fees) 

contract HookEmCoin is ERC20 {
    // State variables
    address public admin;
    uint public stack;
    // string public clubLeader = "owen";

    // Parameter names can be arbitrary
    constructor(string memory name_, string memory symbol_, uint memory stack_) ERC20(name_, symbol_) {
        admin = msg.sender;
        stack = stack_;
        // _mint(account, amount) 
        _mint(admin, 100000e10); // Anyone who calls this can mint as many tokens as they want
    }
}