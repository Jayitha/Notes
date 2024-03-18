---
title: Out of the tar pit
authors: Ben Moseley, Peter Marks
year: 2006
url: ""
Zotero URI: zotero://select/items/@moseley2006out
tags:
  - Ben-Moseley
  - Peter-Marks
  - reading
aliases:
  - Out of the tar pit
---

# Out of the tar pit  
_Ben Moseley, Peter Marks (2006)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Complexity is the single major difficulty in the successful development of large-scale software systems. Following Brooks we distinguish accidental from essential difficulty, but disagree with his premise that most complexity remaining in contemporary systems is essential. We identify common causes of complexity and discuss general approaches which can be taken to eliminate them where they are accidental in nature. To make things more concrete we then give an outline for a potential complexity-minimizing approach based on functional programming and Codd’s relational model of data.

Paper discusses common causes of large-scale system complexity (in understanding a system) and ways to avoid *accidental* complexity

The major contributor to the complexity in the development and maintenance of large-scale software systems is handling of the *state*. Other factors include *code volume* and *flow of control* through the system

The State problem is usually handled either using object-oriented programming (which couples state with behavior) or functional programming (does away with state and side effects)

Paper proposes combining both approaches along with ideas from [[The Relational Model]]

While there are other factors that making building large-scale systems hard, the paper reasons that complexity is the root cause of all since *understanding* the system can fix most other problems but complexity makes *understanding* hard

> ==Simplicity is *Hard*==

Two approaches to understanding systems
1. *Testing* 
	- Treat system as a blackbox and draw conclusions based on system's response to certain situations
	- ==Tests on one input tells you nothing about the system's behavior on another input==
2. *Informal Reasoning*
	- Understand system by examining the internals
- The latter is considered more important since it can lead to generating less errors whereas the former can only detect more errors
- *Have you ever performed the right tests? Negative.*

Causes of Complexity - sometimes complexity is inherent in the problem, sometimes not
1. Complexity caused by ==*State*== (a *stateful* system)
	- "try it again", "reload the document" ... the presence of state makes programs hard to *understand*
	- ==Specifically, it is the number of possible states that makes it complex== - The number of states grow exponentially; with each *extra bit* the number of states doubles
	1. State on Testing
		- tests on one state tell you nothing about other states
		- A common approach is to assume a clean initial state when testing - can't always *get away with this*
		- The issues with testing, and the number of states compound
	2. State on Informal Reasoning
		- As the number of states increase, informally reasoning by performing a mental case-by-case simulation gets out of hand
		- *Contamination* - Even if a procedure is *stateless* on it's own, if it uses any other procedure that is even indirectly *stateful*, the procedure is *contaminated* and is again hard to reason
2. Complexity caused by ==*Control*== (*Order* in which things happen)
	> When a programmer is forced (through use of a language with implicit flow control) to specify the control, they are being forced to specify an aspect of *how* the system should work rather than simply *what* is desired, effectively *over-specifying* the problem
	- When an artificial order is imposed, some compilers choose to ignore the order. However, when trying to *informally reason* through the code, the reader is forced to first assume the order is important, then upon further inspection, determine if it isn't (which is prone to mistakes)
	- Another issue with control occurs with *concurrency*
		- Concurrency makes it harder to reason when using shared-state concurrency (most common form) where the number of scenarios are too many
		- Also testing is difficult since the system can exhibit different behavior on the same input and same initial state when run multiple times
3. Complexity caused by ==*Code Volume*==
	- Mostly a side effect - managing state or specifying control
	- Of interest because (1) easiest form of complexity to measure and (2) interacts badly with other causes of complexity
	> Complexity exhibits a nonlinear increase with size of code
	> Dijkstra mused that there's some law of nature that the amount of intellectual effort needed grows with the square with the program length. He later argues that with powers of abstraction, the amount of intellectual effort needed need not grow more than proportional to program length
	- Paper argues that with effective management of state and control, the non-linearity is uncertain
4. Other causes include: duplicated code, dead code, unnecessary abstraction, missed abstraction, poor modularity, poor documentation...
	- ==Complexity breeds complexity== (secondary causes, if you don't understand code, it is likely you'll write duplicate code),
	- ==Simplicity is Hard== (effort is needed, first solution usually not simple) and
	- ==Power corrupts== (the more power that a language gives the programmer, the more wary one should be of the produced code; argues that garbage collection is good)
<!--SR:!2000-01-01,1,250!2000-01-01,1,250!2000-01-01,1,250!2000-01-01,1,250!2024-03-15,1,230!2000-01-01,1,250!2000-01-01,1,250-->

Classical approaches to manage complexity - Object-orientation, Functional Programming and Logic Programming

1. ==Object-Orientation==
	- The dominant (imperative) method for general software development for traditional von-Neumann (state-based) computation
	- In OOP, an object consists of a state with an associated set of methods that manipulate the state - *encapsulation* enforcing integrity constraints over an object's state
	- Two issues with OOP
		1. If multiple methods access the object, a constraint may have to be enforced across all methods
		2. It's difficult to enforce constraints based on multiple objects and not just a single one
	- *Object Identity* - In OOP, each object is a uniquely identifiable entity regardless of its attributes (*intensional identity*). In contrast, in relational algebra, objects have *extensional identity* where objects are the same if their attributes are the same
		- Useful when using a mutable stateful abstraction - two distinct stateful objects can be mutated to contain different states even if their attributes happen to initially be the same (???????)
		- Problematic otherwise, since now in OOPs we need procedures to check if two objects are equal based on attribute values
	- All forms of OOPs rely on state and hence suffer from all problems associated with state
	- Most OOPs language provide standard seq control and shared-state concurrency leading to all the pre-specified problems
	- Some OOPs languages provide message-passing models (actor-style), however, not widespread

2. ==Functional Programming==
	- Completely stateless lambda calculus of Church
	- Untyped lambda calculus is equivalent in power to the standard stateful abstraction of computation (the Turing machine)
	- State
		- Modern functional languages are either *pure* (no state or side-effects) or impure (discourage state and side-effects but permit use)
		- By avoiding state - *referential transparency* (when providing a set of arguments, a function will always behave the same way) (testing becomes more effective)
		- Informal reasoning is more effective as well
	- Control
		- Functional languages specify a left-to-right sequencing of calculation of function arguments (some implicit order) and hence, can face the same problems as with OOPs however, concurrent variants do exist
	- In the functional style, to simulate implicit mutable states, we instead pass explicit mutable function arguments maintaining referential transparency. However, this approach soon impairs informal reasoning if the state being passed is large and complex, you end up passing irrelevant data. That being said, there are benefits to avoiding hidden, implicit, mutable state.

State and Modularity
- States can permit some forms of modularity. Within a stateful framework, you can add state to any component without adjusting the components that invoke it. In the functional framework, every component has to carry additional information
- The tradeoff lies in referential transparency
- One approach is apparently using the system of monads used by Haskell [@wadler1995monads]

3. ==Logic Programming==
- Declarative, not derived from stateful von-Neumann architecture
- In pure logic programming, you only make statements about the problem and desired solutions (by specifying axioms which describe the problem and the attributes satisfied by solutions)
- Running the system is equivalent to "constructing a valid proof for each solution"
- State - Pure logical programming (unlike it's extensions) makes no use of mutable state and hence has the same advantages in understandability as pure functional programming
- Control - pure Prolog specifies both an implicit ordering (left to right) and an implicit ordering of clause application (top down). This is not the case in ideal logic programming where there is no such order
- In theory, logic programming can escape from complexity problems caused by control

==*Essential Complexity*== - Inherent in, and the essence of, the problem (as seen by the users)
==*Accidental Complexity*== - all the rest; complexity with which the development team would not have to deal with in the ideal world

==Ideal World==
- Not concerned with performance; language and infrastructure provide all general support
- State is *accidental state* if it can be omitted in the ideal world. Similarly for control
- Even in the ideal work, we need to derive *formal requirements*(processable by a computer) from *informal requirements* (from users)
- Informal Requirements -> Formal Requirements
- The next step is to simply *execute* formal requirements directly - absolute simplicity and declarative programming

State in Ideal World
- Some data specified in the users informal requirements can give rise to state
- All data is either provided directly to the system (*input*) or *derived*. Further, derived data is either *immutable* (only intended for display) or *mutable* (explicitly asked to update data)
	- Input data - included in the informal requirements and falls into one of two cases
		1. A possibility the system may need to refer to the data in the future - *essential state*
		2. No possibility - data need not be maintained, no state generated
	- Essential Derived Data - Immutable
		- Can always be re-derived from input (essential state) -> *Accidental State*
	- Essential Derived Data - Mutable
		- Can be re-derived (*accidental state*)
		- Mutability only makes sense when the mutating function has an inverse - otherwise it is not considered as derived data and is effectively input
	- Accidental Derived Data
		- State that is derived but not in requirements is *accidental state*

![[Pasted image 20240105205838.png]]

Control in the ideal world
- Control is considered entirely *accidental*

> ==How close is it possible to get to the ideal world in the real one?==

Theoretical and Practical Limitations
- Formal specifications are categorized into two categories
	1. Property-based - focus on what is required (declarative)
	2. Model-based - Construct a potential model for the system (stateful)
- There are two reasons why we might be forced to include some accidental state
	1. ==Ease of expression== - sometimes it's more natural to store some accidental (mutable derivable state) instead of deriving the state from the input using logic (the position of a player in a game)
	2. ==Performance== - Using accidental state and control can improve efficiency
- It's important to keep in mind, that once we introduce accidental state, however required it may be, we expose ourselves to the same problems that were discussed before

Recommendations for dealing with required accidental complexity - ==Avoid and Separate==
<!--SR:!2024-03-15,1,230-->

![[Pasted image 20240108115831.png]]

- Paper advocates a high level separation into three components each specified by a different *restricted* language - Essential State, Essential Logic, Accidental State and Control
- Accidental State and Control are only there to improve performance; therefore, the system should work without this component, albeit slowly

Discusses [[The Relational Model]]

## References

```dataview
LIST file.frontmatter.title FROM outgoing([[]])
```
