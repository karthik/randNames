
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
```

```
#> 
#> Attaching package: 'dplyr'
#> 
#> The following object is masked from 'package:stats':
#> 
#>     filter
#> 
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
```

```r
library(randNames)
20 %>%
  rand_names %>%
  select(first = user.name.first, last = user.name.last)
```

```
#> Source: local data frame [20 x 2]
#> 
#>       first     last
#> 1    dwayne hamilton
#> 2     angie  roberts
#> 3       ray   fisher
#> 4      cody      kim
#> 5     louis     reed
#> 6      luke   pierce
#> 7      joey    meyer
#> 8    victor  pearson
#> 9      ross     lord
#> 10  roberto    riley
#> 11     earl    davis
#> 12   andrea  barrett
#> 13      don matthews
#> 14     jose   jensen
#> 15 salvador     dean
#> 16    mario thompson
#> 17 reginald     cook
#> 18     phil   martin
#> 19 caroline   wagner
#> 20    logan   watson
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
#> 1             roy          davis
#> 2          sharon       mckinney
#> 3          debbie         foster
#> 4            judy      gutierrez
#> 5          sharon          grant
```

__Filter by gender__


```r
5 %>% 
  rand_names(gender = "female") %>% 
  select(user.name.first, user.name.last)
```

```
#> Source: local data frame [5 x 2]
#> 
#>   user.name.first user.name.last
#> 1             mae            fox
#> 2           kelly        herrera
#> 3        serenity         turner
#> 4           emily       franklin
#> 5         katrina     montgomery
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
#> 1            alex           byrd
#> 2          jeremy        jimenez
#> 3         micheal            cox
#> 4            anna          allen
#> 5     christopher         fuller
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
