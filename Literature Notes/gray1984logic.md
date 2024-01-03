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
- *Partial functions* - Functions not defined over their whole domain
```
Restriction and Union of functions

G(x) = if P(x) then F1(x) else F2(x)

Translates to 

G = (F1 restrict P) union (F2 restrict not P)

Where (F1 restrict P) translates to function P defined on the intersection between the domain of F1 and the extension of P
```

- When evaluating restrictions, the extension of the predicate $P$ is evaluated first since $F1$ can be a partial function
- In Lambda Calculus, Constructor of new functions is done using the greek symbol $\lambda$ and the process is called *function abstraction*

$$\begin{aligned} g &= \lambda x. 2 \ast x + 3\\
h &= \lambda x. \text{ if } x > 4 \text{ then } g(x) \text{ else } -x\\
\phantom{f} &\phantom{=} (\lambda x. x \ast 3)((\lambda y. \text{ if } y > 4 \text{ then } y + 2 \text{ else } 1)(5))\\
G &= \lambda P. (\lambda x. \text{ if } P(x) \text{ then } 2 \ast x \text{ else } x/2)\\
G((\lambda y. y > 2))(5) &= (\lambda x. \text{ if } (\lambda y. y > 2) \text{ then } 2 \ast x \text{ else } x/2)(5)\\
&= 2 \ast 5 = 10
\end{aligned}$$
- A lambda expression denotes an unnamed function
- In the functional model, iteration is done using recursion
```
fac = lambda n. if n = 0 then 1 else n * fac(n - 1)*
```
- There are two version of recursion
	1. *Down-going* - Breaks the problem down into smaller problems where the result of the smaller problem is needed to *build* the answer from the answer from the smaller problems
	2. *Up-going* - Intermediate results are computed and passed down to the smaller subproblems using a *workspace parameter* where the final answer is built and is simply passed back through the call chain (for instance, you can do tail-call elimination maybe from [[ierusalimschy2006programming|Programming in Lua]])
- A list is a sequence of items that are accessed sequentially. There are two functions used to access lists
	1. car(list): list -> element - returns the first element of the list
	2. cdr(list): list -> list - returns a list of all but the first element of the list

```
car([2, 3, 4]) = 2
cdr([2, 3, 4]) = [3, 4]
car(cdr([2, 3, 4])) = 3

-- suppose you want to get the nth element of the list
select(n, l) = lambda n,l. if n = 1 then car(s) else select(n-1, cdr(s))
```

- You can represent trees using nested lists - used for indices like B-Trees
- To construct a list you can use the `cons(<element>, <list>)` function which prepends `element` to the list

```
cons(paste, [jam, butter]) = [paste, jam, butter]
```

- The abstract Lists concept is usually implemented using a *linked* representation, with a pointer to a *list node* containing the first item, which has a pointer pointing to the next node and so on
- It's possible to prepend a list with more than one item using the `cons` function. Therefore, it's important to copy the original list before `cons` if you want to create two different lists
- There are two versions of recursion - down-going and up-going
```
--- function to copy list
-- down-going
dcopy = lambda s. if s = [] then []
				  else cons(car(s), dcopy(cdr(s)))
dcopy([2, 5, 7]) = [2, 5, 7]
-- up-going
ucopy = lambda s. ucop(s, [])
ucop = lambda s,w. if s = [] then w
				   else ucop(cdr(s), cons(car(s), w))
ucopy([2, 5, 7]) = [7, 5, 2]
--- intuitively, the down-going version has access to the last element before it constructs the final list which is not the case with the up-going version
```
- Predicate `atom(l)` returns `true` if `l` is atomic i.e. not a list or the empty list `[]` and `false` otherwise ex. `atom(2) = atom([]) = true; atom([2]) = false`
- The book goes on to discuss how down-going recursion might be slower to execute because of all the space occupied on the stack. In fact, up-going recursion functions can be compiled into iteration + assignment programs ==> *removing tail recursion*
```
-- Other list and set processing operators
member(x, s) -> checks if x is in s or is a subset of s
A orelse B -> if A then true else B
A andif B -> if not A then false else B
intsec(la, lb) -> intersection
subset(la, lb)
equal(la, lb)
```


## 4 Representing Programs by Clauses: Prolog



## References

```dataview
LIST file.frontmatter.title FROM outgoing([[]])
```
