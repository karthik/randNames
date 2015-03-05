
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

__Filter by nationality__


```r
5 %>% 
  rand_names(nationality = "GB") %>%  # Currently takes only US or GB. More coming.
  select(user.name.first, user.name.last)
```

```
#> Source: local data frame [5 x 2]
#> 
#>   user.name.first user.name.last
#> 1            jane         pierce
#> 2         vanessa         clarke
#> 3          milton       mckinney
#> 4           faith          grant
#> 5           debra         watson
```

__Filter by gender__


```r
# Note this is currently broken on the API side
5 %>% 
  rand_names(gender = "female") %>% 
  select(user.name.first, user.name.last)
```

```
#> Source: local data frame [5 x 2]
#> 
#>   user.name.first user.name.last
#> 1            nina         miller
#> 2       katherine           ryan
#> 3             kim           dunn
#> 4          hannah          hicks
#> 5           bobby          evans
```


__Set seed__


```r
5 %>% 
  rand_names(seed = 'foobar') %>% 
  select(user.name.first, user.name.last)
```

```
#> Source: local data frame [5 x 2]
#> 
#>   user.name.first user.name.last
#> 1            earl          garza
#> 2         eduardo        garrett
#> 3         eduardo        garrett
#> 4         eduardo        garrett
#> 5            earl          garza
```
