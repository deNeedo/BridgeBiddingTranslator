# Definition of grammar used by the compiler

To properly define grammar used by the compiler it needs to be splited into two sets of production rules.

## General productions
First it can be defined more generally as the sequence of bidding being a nonterminal symbol and its meaning in English as a terminal symbol:

1. I can be translated to S
2. S can be translated to M

Example: 

- 1C can be translated to '12 to 17 points, at least five clubs'

Left side of the translation can be achieved from starting symbol I by using first production rule. Then the right side of can be achieved by using second rule.

---
## Detailed productions for nonterminal creation process
After that we can still write bidding sequence as couple terminal symbols:

1. S can be translated to NL->S | NL
2. N can be translated to 1 | 2 | 3 | 4 | 5 | 6 | 7
3. L can be translated to c | d | h | s | nt

Example: 

- 1C can be translated to '12 to 17 points, at least five clubs'

Since we already translated the meaning in the previous step now we focus only on the left side. It can be expressed starting for nonterminal symbol S with the use of second variant of the first production rule. Then from NL we go to the second rule, first variant to get 1L and finally we change L to c using third production rule, also first variant.


---
### Disclaimer

Productions were written here with pipe symbol | to indicate that there can be more than one outcome of the left side of the production rule. Technically it should be splitted into several production rules but here to present this grammar in the more clear way, the simillar production rules were refered to as **variants** of the production rule.

The apotrophe symbol '' on the other hand indicates a whole string as a output. 

---

## Grammar definition in the form of the equation

G = (T, N, P, S) where:

- T is the set of terminal symbols {->, 1, 2, 3, 4, 5, 6, 7, c, d, h, s, nt} also including the list of the all possible meanings of bidding sequences.
- N is the set of nonterminal symbols {I, S, M, N, L}.
- P is the set of production rules described above.
- S is the starting symbol - I.

---