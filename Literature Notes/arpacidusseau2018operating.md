---
title: "Operating systems: Three easy pieces"
authors: Remzi H. Arpaci-Dusseau, Andrea C. Arpaci-Dusseau
year: 2018
url: https://pages.cs.wisc.edu/~remzi/OSTEP/
Zotero URI: zotero://select/items/@arpacidusseau2018operating
tags:
  - reading
---

# Operating systems: Three easy pieces  
_Remzi H. Arpaci-Dusseau, Andrea C. Arpaci-Dusseau (2018)_
Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> 

URL - https://pages.cs.wisc.edu/~remzi/OSTEP/

# Introduction

- Read "Surely You're Joking, Mr. Feynman"
- The three pieces are virtualization, concurrency and persistence

Other names for an OS
- a virtual machine
- provides a *standard library* to applications
- resource manager

> [!note+] Role of OS
> 1. Takes physical resources, like CPU, memory, or disk and ==virtualizes== them
> 2. IT handles ==concurrency== issues
> 3. Stores files ==persistently==

Design Goals
- Performance - minimize time and space for features like virtualization
- Protection - isolating one application from the others and the OS
- Reliability - OS cannot fail

History
- Early OS simply consisted of a set of libraries for commonly-used functions
- Next, system calls were invented - they realized you should treat code that runs on behalf of the OS differently (it should have superior access) from a user's

> [!aside|right +++++]
> User applications run in ==user mode==  OS processes are run in ==kernel mode==

> The key difference between a system call and a procedure call is that a system call transfers control (i.e. jumps) into the OS while simultaneously raising the hardware privilege level
> 
> In user mode, the program cannot initialize I/O request to the disk or access physical memory or send a packet on the network. 
> 
> A system call is initiated through a *trap*, control is passed to a *trap handler* entering the *kernel mode*. When the request has been serviced, control is passed back to the user via a *return-from-trap* instruction

- Shift from mainframe to minicomputers
- Introduction of multiprogramming - instead of running one job at a time, run multiple jobs switching rapidly between them.
	- Switching was important because I/O devices were slow
- Shortly after, the UNIX OS was developed by Bell Labs
- From minicomputers to PCs

# Virtualization
[[Virtualization]]

- the OS takes a physical resource and transforms it into a more general, powerful and easy-to-use virtual form of itself
- Virtualizing the CPU enables you to, say, run multiple programs on a single processor as if they were running on multiple processors
- Each running program has its own private memory - virtualizing memory
	- Each process accesses its own *private virtual address space*

## Chapter 4: The Abstraction: The Process

- A program itself is just lifeless data. A **process** is a running program.
- Virtualizing the CPU by stopping one process to run another is called *time sharing* the CPU
- To implement time-sharing, you need both low-level machinery *mechanisms* like context switches and high-level intelligence *policies* like scheduling

> [!note]
> Separating mechanisms (low-level) and policies (high-level) is a way of achieving modularity i.e. you can change low-level mechanisms without having to change (high-level) policies.

- To characterize a process we need to take stock of its *machine state*
	- What it can read or update
	- What parts of the machine is it using 
	- memory (its address space)
	- registers 
		- special registers include - *Program Counter (PC)* (or *Instruction Pointer (IP)*), *stack pointer* and associated *frame pointer*
	- I/O

Process APIs should include
- Create
- Destroy
- Wait
- Miscellaneous Control - e.g. suspend and resume 
- Status

Process Creation
1. Load code and any static data into the address space of the process (usually onto the heap)
	- Old OS' load *eagerly* whereas modern ones load *lazily*
2. Allocate program's *run-time stack* ans heap
	- the heap is initially small, but grows as the program requests for more space
3. Initialize I/O file descriptors - e.g. stdin, stdout, stderr
4. Start the process by jumping to the `main()`

Process States
- **Running** - executing instructions on a processor
- **Ready**
- **Blocked** - e.g. initiated I/O request to disk, blocked. Some other process can use the processor

- [?] Does there need to be any processor involvement as I/O is taking place?

Data Structures
- The OS has data structures to track information such as - the *process list*

The process list will for instance track the following information about each process (called a _Process Control Block (PCB)_)

![[Pasted image 20240203110534.png]]


# Concurrency
[[Concurrency]]

- A thread is a function that is running within the same memory space as other functions with more than one active at a time
- A program that uses threads to increment a shared counter but doesn't force atomicity will see different outputs for the same number of specified increments
# Persistence
[[Persistence]]

- The software that manages the disk is called the *file system*
- Unlike CPU or memory, disks aren't typically virtualized
- For performance, file systems delay write for a while hoping to batch them using intricate write protocols like *journaling* or *copy-on-write*


# Security

## References

```dataview
LIST file.frontmatter.title FROM outgoing([[]])
```