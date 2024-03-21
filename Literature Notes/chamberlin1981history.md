---
title: A History and Evaluation of System R
authors: Donald D Chamberlin, Morton M Astrahan, Michael W Blasgen, James N Gray, W Frank King, Bruce G Lindsay, Raymond Lorie, James W Mehl, Thomas G Price, Franco Putzolu, others
year: 1981
url: ""
Zotero URI: zotero://select/items/@chamberlin1981history
tags:
  - Donald-D-Chamberlin
  - Morton-M-Astrahan
  - Michael-W-Blasgen
  - James-N-Gray
  - W-Frank-King
  - Bruce
  - Bruce-G-Lindsay
  - Raymond-Lorie
  - James
  - James-W-Mehl
  - Thomas-G-Price
  - Franco-Putzolu
  - -others
  - reading
aliases:
  - A History and Evaluation of System R
---

# A History and Evaluation of System R
_Donald D Chamberlin, Morton M Astrahan, Michael W Blasgen, James N Gray, W Frank King, Bruce G Lindsay, Raymond Lorie, James W Mehl, Thomas G Price, Franco Putzolu, others (1981)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> System R, an experimental database system, was constructed to demonstrate that the usability advantages of the relational data model can be realized in a system with the complete function and high performance required for everyday production use. This paper describes the three principal phases of the System R project and discusses some of the lessons learned from System R about the design of relational systems and database systems in general.

My notes are from the version of the paper annotated by Prof. Joe Hellerstein from UC Berkeley. I list some annotation verbatim in my notes (as footnotes).

Developed by IBM Research Laboratory, San Jose, California between 1974-1979

Prior to the Codd model, conventional database systems stores data in two ways
1. By contents of records
2. By connections between the records
	 
> [!aside|right +++]
	> Navigational System
	
- This older models are called *navigational* systems where for every query, the burden is on the user to specify the query's algorithm (through the access paths the query must use)
- Any changes made to the representation of data would require changes being made to the application code

The navigational system is a problem since, in the words of Joe Hellerstein
$$\frac{\mathrm{d} env}{\mathrm{dt}} >>> \frac{\mathrm{d} app}{\mathrm{dt}}$$
i.e. the rate of change of the environment (disks etc) is much faster than the rate of change of an application built on top of a database systems. In navigational systems where queries are dependent on the physical layout, application code will have to change with the database. 

The relational database system as modeled by Codd have two important properties
1. All information shown to the user is represented as data values and not dependent as connections
2. A high-level query language which supports data queries without specifying the algorithm

At that point it was doubtful is an automatic system could be as good as an experienced programmer in picking an efficient algorithm for processing queries 

The key goals were
1. Provide a high-level non-navigational user interface for [[Data Independence]]
2. Support different kinds of use cases - transactions, ad hoc queries, report generation
3. Support rapidly changing database environments without having to modify application code
4. Support safe concurrent usage
5. Support recovery
6. Support views and restricted access
7. Support all the above with good performance

The history of System R is divided into three phases

## Phase 0

Occurred during 1974 and most of 1975

Developed the SQL user interface and quick prototyping of a subset of SQL for a single-user environment

How cool! Phase 0 code was meant as a learning project that the authors were planning to scrape!^[Joe Hellerstein(JH): It is part of system lore that you should expect to throw out the first version of a system]


Uses relational access method [[XRM]]

Interpreter program written to execute high-level SQL on top of XRM

Supports "subquery" but not "join" i.e. query can search through several relation during computation but the result has to be from one relation^[JH: This also obviated the need for a join-reordering query optimizer,  placing  the decisions of which relation to check when in the hands of the SQL writer.  Not very declarative, by subsequent standards!]

In this phase, a lot of attention was paid to human interactability with SQL^[JH: Note focus on human factors for end-users early on!]

One lesson learnt is that the system catalog that describes the structure of the database should be stored as a regular set of relations in the database itself^[JH: Uniform interface to data and metadata also results in code reuse both internal and external to the system too -- everything is "just a table".  Very helpful.  it's often tempting to make the system metadata have its own "special" interface, but it's almost always a mistake.]. There are two advantages
1. Permits keeping catalog upto date as changes are made to the database
2. Makes catalog information available to system optimizer

XRM model allows for TID-list processing^[JH: TID-list intersection is considered a rather "advanced" feature in modern DBMSs -- it wasn't implemented in most systems in the 80's, but became important in data warehousing in the late 1990s.]

The most challenging part was building a query optimizer. The objective was to minimize the number of tuples fetched during query processing. To this end, the optimizer made extensive use of inversions and TID-lists. Large TID-lists are stored as temporary objects in the database during query processing

Other key take positive aways include
- usability of SQL
- feasibility of creating new tables and inversions "on the fly"
- feasibility of an automatic optimizer for access path selection
- convenience of storing system catalog in the database

Key lessons learnt

1. Optimizer should also take cost of creating and manipulating TID lists, fetching tuples and fetching data pointed to by tuples and not just the cost of fetching tuples. These hidden costs add up making TID-list manipulation especially when they're managed in the database (and not in-memory)
2. Rather than the objective being "minimize number of fetched tuples", we should aim to minimize the number of I/Os. Showcases the importance of clustering related tuples on physical storage^[Also revealed how XRM needs extra I/Os are needed to retrieve values. Useful if many tuples are processed but only few are materialized]^[JH: So why not be flexible about this?  TID lists turn out to be useful for internal representation in queries.  See also [[Index-Only Plans]]].
3. The optimizer cost measure should be weighted sum of CPU time and I/O count^[Phase 0 was found to be CPU-bound]
4. Joins are important and are consequently included in the next phase
5. Complex query optimizer emphasizing on complex query should be swapped out for a simpler one that minimized path length for simple queries^[JH: Optimizing the fast path, another systems chestnut]

## Phase 1

Occurred during 1976 and 1977

Design and construction for full-function multiuser environments

Used different access method RSS (Research Storage System) and an optimizing SQL processor called RDS (the Relational Data System)

Separation between the two is beneficial

RSS originally designed to support multiple concurrent users

Included a locking subsystem to prevent conflicts

Also added view and authorization subsystems for security

View subsystem - alternate views of the database

Authorization subsystem - each user has access only to those views for which they have been authorized^[JH: Though this is a quick mention, the idea of access control via views is a rather deep application of  data independence to the realm of security.  How do you provide fine-grained access control in a language where all entities are addressed by value rather than by identity?  It all works out fairly naturally using the relation as the basic unit of access, and a rich query language to define view relations.  A complication is that updates through views are often ill-defined.  Also, defining many views results in a lot of SQL and a crowded catalog.]

Recovery subsystem - restore consistent state in the event of a hardware or software failure

System R supports both embedding and a standalone query UI (called UFI - User Friendly Interface).

The UFI is built on top of System R, therefore, it can be modified. 

Interestingly, to install a multiuser database system, modification to the OS were necessary to support communication between virtual machines and writable shared virtual memory^[JH: As in the UNIX world, database functionality has been a key driver of OS modifications -- mostly because DBMSs were for years the only large multi-user server "application".]

### Compilation

It is possible to compute very high-level SQL statements into compact efficient routines in machine language (ccite:42)

When embedding SQL queries, a preprocessor examines, optimizes and compiles the query into small machine language routines which are packaged into an *access module*^[JH: This is another age-old design decision: interpretation vs. compilation vs. various possible intermediate representations of basic "opcodes" strung together.  In retrospect, the System R decision of full compilation isn't necessarily the only one that's reasonable.]

The access module when called processes the query by making calls to the RSS

The application program need not interact with a SQL interpreter, it just uses the access module.

If any changes are made to the database like dropping an index, an access module generated with the index is marked "invalid" and the next time it's accessed, a new module is generated. For each access module, the list of indices and tables that the module depends on are stored in the database. When some dependency is modified, all dependent access modules are marked for deletion.


## Phase 2

Occurred during 1978 and 1979

Evaluation of System R in actual use

