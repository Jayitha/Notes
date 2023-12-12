---
title: Logic, algebra and databases
authors: Peter Gray
year: 1984
url: ""
Zotero URI: zotero://select/items/@gray1984logic
tags:
  - reading
---

# Logic, algebra and databases  
_Peter Gray (1984)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> 

I have this nagging feeling there's something very fundamental in database systems that I don't seem to understand.
## 1 Propositional Logic

I'll skim through most of the first two chapters since I mostly know the content.

- Rules of inference - chain rule and Modus Ponens (or mod pons)

```
Modus Ponens

Given truth of   A
and of           A -> B
deduce           B

Chain Rule

Given truth of   A -> B
and of           B -> C
deduce           A -> C
```

- $\vdash$ (it is true that) ($\vdash P \rightarrow Q$)
- $\models$ (it is universally true that) ($\models P \rightarrow (P \vee Q)$) - for tautologies

- The problem of proofs is to prove a formula $B$ given the truth of formulae $A_1$ to $A_n$

$$A_{1}, A_{2}, \ldots, A_{n} \vdash B$$
There are two ways of proving
1. Generate a long truth table for each boolean variable - impractical
2. Write down premises and use rules of inference to deduce other true formulae

Three different proof strategies
1. **Proof by adopting a premise** - to prove an implication of form $A \rightarrow B$, assume $A$ is true by adopting $A$ as a premise and prove $B$. This is equivalent to $A \vdash B \text{ iff } \vdash A \rightarrow B$
2. **Reductio Ad Absurdum** (*reduce to an absurdity*) - When applying a chains of inference to a premise, it is possible to get sidetracked and prove irrelevant statements. This is called *forward chaining*. Instead, you can alternatively try proving the contrapositive ($\sim B \rightarrow \sim A$) called *backward chaining*. You can also use both, i.e. assume both $\sim B$ and $A$ are true i.e. both forward and backward chaining until you reach a contradiction.
3. **Proof by Resolution** - $\models (X \vee A) \wedge (Y \vee \sim A) \rightarrow (X \vee Y)$

```
Proof by Resolution

1. Convert the Reductio Ad Absurdum premise to Conjunctive Normal Form (CNF)
2. Take two clauses which contain the same atom with opposite signs and apply resolution to combine the two clauses and eliminate the atom
3. Continue till you get the conjunction of the same atom with different signs
```

Let's try an exercise
$$P \vee Q, P \rightarrow R, Q \rightarrow S \vdash R \vee S$$
**STEP 1** 
Converting the premise
$$(P \vee Q) \wedge (\sim P \vee R) \wedge (\sim Q \vee S) \wedge \sim(R \vee S)$$
Converting conclusion to normal form

$$(P \vee Q) \wedge (\sim P \vee R) \wedge (\sim Q \vee S) \wedge \sim R \wedge \sim S$$
**STEP 2**
$$(P \vee Q) \wedge (\sim P \vee R) \rightarrow Q \vee R$$
$$(\sim Q \vee S) \wedge \sim S \rightarrow \sim Q$$
So far we have
$$(Q \vee R) \wedge (\sim Q) \wedge \sim R$$
The statement can be reduced by resolution $(Q \vee R) \wedge (\sim Q) \rightarrow R$

**STEP 3** 
We end up with $R \wedge \sim R$ which is a contradiction ($\Box$)

Advantages of the resolution method are
1. Do not have to use equivalences to rearrange atoms as all clauses are in normal form and resolution rule doesn't care about the position
2. Only one rule to remember
3. Easy to mechanize

However, it is possible to go round in circles and the normal form makes all the clauses look alike(?)
## 2 Predicate Calculus

- A usual rule of thumb is that the existential quantifier ($\exists$) goes with conjunction and the universal quantifier ($\forall$) goes with implication
- A unary predicate (taking only one argument) is true for a subset of the *universe of discourse* ($W$). This subset is called the *extension* of the predicate and the predicate is called the *Characteristic Function* of the subset
- To negate a quantified expression, change the quantifier, change the signs and change the operators
- Predicate calculus can be used to form queries about stored data i.e. we want the extension of the predicate. Predicates are also used to "encode" *integrity constraints*
- You can convert quantified expressions to Conjunctive Normal Form as well (CNF)
	1. Remove equivalences ($P \leftrightarrow Q$ => $(P \rightarrow Q) \wedge (Q \rightarrow P)$)
	2. Remove implications ($P \rightarrow Q$ => $\sim P \vee Q$)
	3. Move negation signs from outside to in front of the atoms using De Morgan's laws
	4. Remove existential quantifiers using *Skolemisation* - If a variable x is existentially quantified and not nested below a universal quantifier, every occurrence of x is replaced by an unknown *Skolem Constant* (say $a$) denoting one value of x for which the statement is true. If $x$ is nested under a universal quantifier ($\forall y, z$), you replace all instances of $x$ with a *Skolem Function* $f(y, z)$ 
	5. Pull out universal quantifiers
	6. Multiply out bracketed conjunctions - $P \vee (Q \wedge R) => (P \vee Q) \wedge (P \vee R)$
- You can use this CNF form to again use the Resolution method from the first chapter. However, there are some formulae that are "undecidable" and can trick computers to go in circles
- When using resolution, you can use an answer clause along with the conclusion to keep track of the solution $\sim C \vee Answer(z)$
- To avoid circles, we provide computer programs with heuristics
	- **Unit Preference** - It is best to use at least one unit clause in resolution
	- **Set of support** - You must use specific facts from the problem not just general axioms
	- **Choose unique literals** - Attempt to resolve with literals that appear less frequently and appears in the conclusion
	- **Planning** - A human will usually plan out the proof first, providing meta-information about which axioms are important to drive the proof
- In the resolution method, the process of finding a substitution which makes two literals clash is called *Unification*
- 
## 3 Lambda Expressions and List Processing

- One class of database languages is based on predicate calculus (SQL), others are based on 'Applicative' or 'Functional' languages
- 