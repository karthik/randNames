
# Random names

[![Travis-CI Build Status](https://travis-ci.org/karthik/randNames.png?branch=master)](https://travis-ci.org/karthik/randNames)



**Installation**


```r
devtools::install_github("karthik/randNames")
```

It queries a random name API and returns a whole bunch of useful fields. 


```r
library(dplyr)
library(randNames)
20 %>%
rand_names %>%
select(first = user.name.first, last = user.name.last)
```

```
#> Source: local data frame [20 x 2]
#> 
#>        first      last
#> 1      irene     wells
#> 2        art     mccoy
#> 3      kelly    brewer
#> 4    clifton      reid
#> 5      janet   barrett
#> 6     claude    newman
#> 7      diana    graham
#> 8      brian     clark
#> 9      allie      ford
#> 10     nolan alexander
#> 11    brooke    rogers
#> 12 elizabeth   sanders
#> 13    sharon    horton
#> 14      todd     lewis
#> 15   annette      ward
#> 16      tara   shelton
#> 17       ted   russell
#> 18    jeremy    moreno
#> 19       amy    thomas
#> 20     kelly      pena
```

