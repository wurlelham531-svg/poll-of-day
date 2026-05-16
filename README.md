# Poll of the Day

7 rotating daily polls, 3 options each. Cast your vote on-chain on Stacks (Clarity 4).

## Contract

- **Address:** `SP16F6839630K5XX06KE7KVNSNMYBK89912NH6N4C.poll-of-day`
- **Network:** Stacks Mainnet
- **Clarity Version:** 4
- **Explorer:** [view on Hiro Explorer](https://explorer.hiro.so/SP16F6839630K5XX06KE7KVNSNMYBK89912NH6N4C.poll-of-day?chain=mainnet)

## Functions

- `(vote day option)` — cast a vote for `option` (1-3) on `day` (1-7). One vote per address per day.
- `(get-tally day option)` — read-only, number of votes for a given option on a given day.
- `(get-user-vote day user)` — read-only, returns the option a user voted for on a given day (or none).

## Frontend

Static HTML in `frontend/`. Connect a Stacks wallet, pick a day and an option, vote.

## License

MIT

---

_Last updated: 2026-05-16_
