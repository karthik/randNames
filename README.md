
# Random names

[![Travis-CI Build Status](https://travis-ci.org/karthik/randNames.png?branch=master)](https://travis-ci.org/karthik/randNames)  
[![Coverage Status](https://coveralls.io/repos/karthik/randNames/badge.svg)](https://coveralls.io/r/karthik/randNames)



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
#> 1   benjamin     hayes
#> 2    brayden rodriguez
#> 3        bob    wright
#> 4      hanna   sanchez
#> 5   maddison   carlson
#> 6  alexandra   frazier
#> 7     manuel    pierce
#> 8     andrea  morrison
#> 9     dennis    barnes
#> 10    steven      lowe
#> 11      erin     grant
#> 12     bobby       may
#> 13 catherine      rice
#> 14     frank  matthews
#> 15 christian      cruz
#> 16   susanna       kim
#> 17    dustin    castro
#> 18 katherine     gomez
#> 19    sheryl    romero
#> 20     eliza   steward
```

__Filter by nationality__


```r
5 %>% 
# Currently takes only US or GB. More coming.
  rand_names(nationality = "GB") %>%  
  select(user.name.first, user.name.last)
```

```
#> Source: local data frame [5 x 2]
#> 
#>   user.name.first user.name.last
#> 1          sophie      patterson
#> 2         rosalyn          jones
#> 3           mario           rose
#> 4          connor           diaz
#> 5           jakob        hawkins
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
#> 1        franklin        chapman
#> 2         addison          mills
#> 3             eva        coleman
#> 4            jill         hansen
#> 5            joel          owens
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
#> 1         alberto         butler
#> 2           peggy        johnson
#> 3           kylie            cox
#> 4            beth          allen
#> 5         chester         garcia
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
user.picture.large  
