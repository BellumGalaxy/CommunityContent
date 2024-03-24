# The Rekt Test
First of all, answer these questions. If you don't have the answer, your protocol is not ready to an audit.

1. Do you have all actors, roles, and privileges documented?
2. Do you keep documentation of all the external services, contracts, and oracles you rely on?
3. Do you have a written and tested incident response plan?
4. Do you document the best ways to attack your system?
5. Do you perform identity verification and background checks on all employees?
6. Do you have a team member with security defined in their role?
7. Do you require hardware security keys for production systems?
8. Does your key management system require multiple humans and physical steps?
9. Do you define key invariants for your system and test them on every commit?
10. Do you use the best automated tools to discover security issues in your code?
11. Do you undergo external audits and maintain a vulnerability disclosure or bug bounty program?
12. Have you considered and mitigated avenues for abusing users of your system?

# Protocol Security Review Questions

## Basic Info

- **Protocol Name**
  - A:
- **Website**
  - Link
- **Documentation**
  - Link
- **Contacts**
  - Name:
  - Email:
  - Telegram:
- Whitepaper
  - Link

## Code Details

| Description                | Info|
| -------------------------- | --- |
| Link to Repo to be audited |     |
| Commit hash                |#hash|
| Number of Contracts in Scope | X |
| Total SLOC for contracts in scope | xxx |
| Complexity Score | xxx |
| How many external protocols does the code interact with | Z |
| Overall test coverage for code under audit | XX % |

### In Scope Contracts

```
#-- src
|   #-- Contract.sol
|   #-- Contract.sol
|   #-- Contract.sol
|   #-- Contract.sol

```

## Protocol Details

Tell us a little bit about your protocol.

| Description | Info |
| --- | --- |
| Current Status | Deployed |
| Is the project a fork of the existing protocol | X |
| Specify protocol (only if Yes for prev question) | - |
| Does the project use rollups? | X |
| Will the protocol be multi-chain? | X |
| Specify chain(s) on which protocol is/ would be deployed | X |
| Does the protocol use external oracles? | X |
| Does the protocol use external AMMs? | X |
| Does the protocol use zero-knowledge proofs? | X |
| Which ERC20 tokens do you expect to interact with smart contracts | X |
| Which ERC721 tokens do you expect to interact with smart contracts? | X |
| Are ERC777 tokens expected to interact with protocol? | X |
| Are there any off-chain processes (keeper bots etc.) | X |
| If yes to the above, please explain | X |

## Protocol Risks

Tell us what you consider acceptable risks. We will ignore evaluating some risks based on this feedback.

| Description | Info |
| --- | --- |
| Should we evaluate risks related to centralization? | X |
| Should we evaluate the risks of rogue protocol admin capturing user funds? | X |
| Should we evaluate risks related to deflationary/ inflationary ERC20 tokens? | X |
| Should we evaluate risks due to fee-on-transfer tokens? | X |
| Should we evaluate risks due to rebasing tokens? | X |
| Should we evaluate risks due to the pausing of any external contracts? | X |
| Should we evaluate risks associated with external oracles (if they exist)? | X |
| Should we evaluate risks related to blacklisted users for specific tokens? | X |
| Is the code expected to comply with any specific EIPs? | X |
| If yes for the above, please share the EIPs | X |

## Known Issues

Protocol devs are already aware of & working on the following issues and/or consider them acceptable risks.

| Issue | Description |
| --- | --- |
| Issue #1 |  |


## Previous Audits and Reports

Please share existing audit reports.

| Description | Info |
| --- | --- |
| How many previous audits | X |
| AuditorX | Link |
| BugCatch | Link |

## Resources

Resources that can help us understand protocol better.

### Flow Charts / Design Docs

- Use tools like Excalidraw, Miro, etc, to create it.

### Explainer Videos

- Link

### Articles / Blogs

- Any other useful link to help us understand the protocol.

## Post Deployment Planning

1. Are you planning on using a bug bounty program? Which one/where?
   - A:
2. What is your monitoring solution? What are you monitoring for?
   - A:
3. Who is your incident response team?
   - A: