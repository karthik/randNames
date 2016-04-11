CRAN maintainers write:

Dear maintainer,

This now seems to fail with

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
Error in eval(expr, envir, enclos) : object 'user.name.first' not found
Calls: %>% ... select_vars_ -> <Anonymous> -> lapply -> FUN -> eval -> eval
Execution halted


These errors have been fixed in this update.