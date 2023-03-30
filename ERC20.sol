// SPDX-License-Identifier: MIT
// 声明合约所使用的许可证类型为MIT
pragma solidity ^0.8.0;

// 引入OpenZeppelin中的ERC20标准合约
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

// 声明合约，继承ERC20合约
contract MyToken is ERC20 {
    // 构造函数,初始化代币名称:MyToken 代号:MT
    // 传入参数initialSupply,是代币的发行量
    constructor(uint256 initialSupply) ERC20("MyToken", "MT") {
        // 合约的创建者获得所有的代币
        _mint(msg.sender, initialSupply);
    }
}
