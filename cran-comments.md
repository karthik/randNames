CRAN maintainers write:

Dear maintainer,

We now see

* checking examples ... ERROR
Running examples in ‘randNames-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: rand_names
> ### Title: Random name generator
> ### Aliases: rand_names
>
> ### ** Examples
>
> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:

    filter, lag

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union

> 5 %>%
+ rand_names %>%
+ select(first = user.name.first, last = user.name.last)
Error: object at index 2 not a data.frame
Execution halted

* checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  14: tryCatchOne(expr, names, parentenv, handlers[[1L]])
  15: doTryCatch(return(expr), name, parentenv, handler)
  16: eval(assertion, env)
  17: eval(expr, envir, enclos)
  18: is.data.frame(data)
  19: rbind_all(x)

  testthat results =============================================================
===
  OK: 0 SKIPPED: 0 FAILED: 1
  1. Error: Random names work

  Error: testthat unit tests failed
  Execution halted



  These errors have been fixed in the current submission.

  