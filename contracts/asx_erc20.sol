// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract asx {
    // Developer's address
    address public _dev = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    string public _name; // Token Name
    string public _symbol; // Token Symbol
    uint8 public _decimals; // Token Decimal
    uint256 public _totalSupply; // Token TotalSupply

    // mapping for balance tracking
    mapping(address => uint256) public pool;

    // mapping for allowance tracking
    mapping(address => mapping(address => uint256)) public allowances;

    // Constructor to initialise values
    constructor() {
        _name = "Astryx";
        _symbol = "ASX";
        _decimals = 18;
        _totalSupply = 1000000 * 10 ** _decimals;

        _mintDev(_totalSupply);
        emit Transfer(address(0), _dev, _totalSupply);
    }

    // Mints Dev the total Supply
    function _mintDev(uint256 _amount) internal {
        pool[_dev] += _amount;
    }

    // Event emitted when tokens are transferred
    event Transfer(address indexed from, address indexed to, uint256 value);

    // Event emitted when allowance is set
    event Approval(address indexed owner, address indexed spender, uint256 value);

    // Transfer Function to sends token sender - receiver
    function _transfer(address _from, address _to, uint256 _amount) internal {
        require(_to != address(0), "Cannot transfer to zero address");
        require(pool[_from] >= _amount, "Insufficient Balance");
        pool[_from] -= _amount;
        pool[_to] += _amount;
        emit Transfer(_from, _to, _amount);
    }

    function transfer(address _to, uint256 _amount) public returns(bool) {
        _transfer(msg.sender, _to, _amount);
        return true;
    }

    // Allowance returns the allocated token from owner address for a spender
    function allowance(address owner, address spender) public view returns(uint256) {
        return allowances[owner][spender];
    }

    // Implements ThirdParty Transfers
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_value <= allowances[_from][msg.sender], "Allowance Exceeded");     // Check allowance
        allowances[_from][msg.sender] -= _value;
        _transfer(_from, _to, _value);
        return true;
    }

    // Approve used to allow an spender to allow transfer of a particular fixed amount
    function approve(address _spender, uint256 _amount) public returns(bool) {
        require(_spender != address(0), "Cannot approve zero address");
        allowances[msg.sender][_spender] = _amount;
        emit Approval(msg.sender, _spender, _amount);
        return true;
    }

    // getters to get the ERC20 meta data
    function name() public view returns(string memory) { return _name; }
    function symbol() public view returns(string memory) { return _symbol; }
    function decimals() public view returns(uint8) { return _decimals; }
    function totalSupply() public view returns (uint256) { return _totalSupply; }

    // balanceOf is used to check ones public wallet address to track balance
    function balanceOf(address _toCheck) public view returns(uint256) {
        require(_toCheck != address(0), "Cannot query balance for zero address");
        return pool[_toCheck];
    }
}