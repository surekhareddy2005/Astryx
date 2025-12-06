# Learning Outcomes from Building the Astryx (ASX) ERC‑20 Token

This project provided hands‑on understanding of how Ethereum tokens work internally and how ERC‑20 standards are implemented manually in Solidity.

---

## 1. ERC‑20 Standard Structure
I learned how ERC‑20 defines a universal interface so wallets, exchanges, and dApps can interact with tokens consistently.

---

## 2. How Balances Are Stored
Using mappings for balance tracking gave me insight into how account balances are maintained on-chain.

---

## 3. Allowances & Approvals
The approve → transferFrom mechanism taught me how third‑party transfers work in DeFi apps and exchanges.

---

## 4. Importance of Events
Transfer and Approval events allow explorers (like Etherscan), wallets, and apps to track token activity transparently.

---

## 5. Security Considerations
I learned the importance of validation checks such as:
- Blocking transfers to zero address  
- Preventing zero‑address approvals  
- Ensuring sufficient balance and allowances  

---

## 6. Understanding msg.sender
This helped me understand how Ethereum identifies who is calling a function and how permissions work inside smart contracts.

---

## 7. Manual ERC‑20 Implementation
Writing transfer, approve, allowance, and metadata functions manually gave me full clarity on how token logic works under the hood.

---

## 8. Minting & Supply Logic
I learned how initial supply is created, assigned, and logged using events.

---

## 9. Remix Workflow
I practiced compiling, deploying, testing, and monitoring events inside Remix IDE.

---

## Final Reflection
This project improved my Solidity fundamentals, made ERC‑20 architecture clear, and prepared me for more advanced blockchain development such as NFTs, DeFi, and smart contract automation.

