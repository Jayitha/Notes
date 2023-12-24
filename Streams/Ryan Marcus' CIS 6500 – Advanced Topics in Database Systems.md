# Ryan Marcus' CIS 6500 – Advanced Topics in Database Systems

[Link to Syllabus](https://rmarcus.info/syllabi/Penn_CIS6500_F23.pdf)

## Part 2 - Rows and Columns

Key question: how do column stores take advantage of compression?
[[abadi2006integrating]]

Key question: how much, if any, of the advantages of column stores can we get from a row store?
[[abadi2008column]]

## Part 3: Execution Models

Key question: how does one decompose a query execution plan into compile-able steps? What benefit does this bring?
[[neumann2011efficiently]]

Key question: compare and contrast compiled and vectorized execution engines. What are the pros and cons of each?
[[kersten2018everything]]

## Part 4: Index Structures

Key question: how dose the design of index structures change when we consider caching?
[[rao2000making]]

Key question: what is a column sketch, and how is it uniquely suited for column-oriented analytics databases?
[[hentschel2018column]]

Key question: can statistical or learned models lead to improved index structures? If so, what is it about learned models that make performance better or worse?
[[kraska2018case]] [[marcus2020benchmarking]]

Key question: how do you design a workload-aware index for queries with predicates on multiple columns? Why can’t you just use multiple single-column indexes?
[[nathan2020learning]]

## Part 5: Join Algorithms

Key question: what are the main problems with naive sort-merge-join? How can the algorithm be improved?
[[albutiu2012massively]]

Key question: what are the techniques and algorithms that make hash joins work well? Are there specific conditions or requirements for a hash join to have good performance?
[[bandle2021partition]]

Key question: can statistical or learned techniques improve something as fundamental as a sorting algorithm?
[[kristo2020case]]

Key question: is there any advantage to using a learned function as a hash function?
[[sabek2022can]]

Key question: even if we have a really good hash join, if we order the joins incorrectly, the query will still be slow. Is there another way?
[[freitag2020adopting]]

## Part 6: Query Optimization

Key question: what is the “state of the art” in query optimization today? Where do current query optimizers struggle?
[[leis2015good]]

Key question: how can learned models help improve cardinality estimation? What are the advantages and disadvantages?
[[kipf2018learned]]

Key question: these query optimizers sure seem complicated! Can we get the computer to just *learn* a model for us?
[[yang2022balsa]] [[marcus2019neo]]

Key question: if techniques like Balsa have a high potential for failure, are there more practical, less error prone ways to improve a query optimizer with learning?
[[marcus2021bao]]

Key question: if an optimizer is going to see the same query many times, what techniques can we use to get better performance than simply running a traditional query optimization algorithm each time?
[[doshi2023kepler]]

Key question: most query optimizers pick a query plan and then ship that plan off to the executor. What if we mixed together query planning and query execution? What are the advantages and disadvantages?
[[avnur2000eddies]]

Key question: query optimization is only a small part of the puzzle of making a “smart” database. What other challenges and potential for automation exists?
[[pavlo2017self]]
