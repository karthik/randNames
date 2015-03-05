
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
#>       first     last
#> 1      ivan    terry
#> 2    darren     byrd
#> 3    mathew martinez
#> 4    sophia williams
#> 5      lucy  stanley
#> 6      paul     pena
#> 7   darrell    reyes
#> 8    pamela    ellis
#> 9    connie     dean
#> 10   justin davidson
#> 11    terra  daniels
#> 12   austin   vargas
#> 13 veronica     hall
#> 14     paul   howell
#> 15   lillie  barrett
#> 16     jeff  barnett
#> 17    david    banks
#> 18  louella peterson
#> 19   albert    banks
#> 20    naomi  russell
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

__Additional fields beyond first and last name__


seed
user.password
user.sha256
user.cell
user.name.title
user.location.city
user.picture.medium
user.gender
user.salt
user.registered
user.SSN
user.name.first
user.location.state
user.picture.thumbnail
user.email
user.md5
user.dob
user.version
user.name.last
user.location.zip
user.NINO
user.username
user.sha1
user.phone
user.nationality
user.location.street
user.picture.large.
