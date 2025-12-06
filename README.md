# Astryx (ASX) ERC-20 Token

Astryx (ASX) is a fully functional ERC-20 token implemented manually in Solidity.  
This contract demonstrates how ERC-20 standards work internally and serves as an educational token implementation.

---

## 🔥 Token Details

| Property | Value |
|---------|--------|
| **Name** | Astryx |
| **Symbol** | ASX |
| **Decimals** | 18 |
| **Total Supply** | 1,000,000 × 10¹⁸ ASX |
| **Initial Holder** | 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 |

All tokens are minted to the developer address during deployment.

---

## 📘 ERC-20 Overview

ERC-20 is the token standard used for fungible tokens on the Ethereum blockchain.  
A token is considered ERC‑20 compliant when it includes:

- `totalSupply`
- `balanceOf`
- `transfer`
- `approve`
- `allowance`
- `transferFrom`
- Standard events (`Transfer`, `Approval`)

This ensures all wallets, exchanges, and dApps can interact with the token seamlessly.

---

## 🧩 Features Implemented

- Complete ERC‑20 compliance  
- Manual implementation without external libraries  
- Balance & allowance tracking  
- Secure transfer logic with validations  
- Transfer and approval events  
- Minting entire supply to developer wallet  

---

## 🚀 Deployment (Remix IDE)

1. Open **https://remix.ethereum.org**
2. Create file `asx.sol`
3. Paste the contract code
4. Compile using Solidity **0.8.30**
5. Deploy with Remix VM or Injected Provider
6. `_dev` receives the total supply on deployment

---

## 🛠 Usage Examples

### Check Balance
```
balanceOf(address)
```

### Transfer Tokens
```
transfer(address_to, amount)
```

### Approve Spender
```
approve(spender, amount)
```

### Delegated Transfer
```
transferFrom(owner, recipient, amount)
```

---

## 🧪 Tested Behaviors

- Initial supply minted correctly  
- transfer() updates balances and emits event  
- approve() sets allowance and emits event  
- transferFrom() works after approval  
- Reverts on invalid transfers and insufficient balances  

---

## 📄 License

This project is licensed under **MIT License**.

