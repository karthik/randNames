
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
15 %>% 
# Currently takes only US or GB. More coming.
  rand_names(nationality = "GB") %>%  
  select(user.name.first, user.name.last)
```

```
#> Source: local data frame [15 x 2]
#> 
#>    user.name.first user.name.last
#> 1            diane      patterson
#> 2             abby       anderson
#> 3             ryan            cox
#> 4           arthur          ortiz
#> 5             ivan         newman
#> 6             kate          stone
#> 7         isabella        stewart
#> 8            megan         harper
#> 9         franklin         rhodes
#> 10         douglas        barrett
#> 11           cathy      henderson
#> 12           julie       robinson
#> 13         rebecca         turner
#> 14           logan        watkins
#> 15       christian       reynolds
```

__Filter by gender__


```r
15 %>% 
  rand_names(gender = "female") %>% 
  select(user.name.first, user.name.last)
```

```
#> Source: local data frame [15 x 2]
#> 
#>    user.name.first user.name.last
#> 1            eliza         watson
#> 2            amber           ward
#> 3              kim         duncan
#> 4            abbie          stone
#> 5            alice          mccoy
#> 6           debbie        douglas
#> 7            becky         gibson
#> 8          britney            lee
#> 9           judith       harrison
#> 10             mia          davis
#> 11        michelle       caldwell
#> 12          lauren         nelson
#> 13           tracy         lawson
#> 14            lily         porter
#> 15       alexandra        simmons
```


__Set seed__


```r
15 %>% 
  rand_names(seed = 'foobar') %>% 
  select(user.name.first, user.name.last)
```

```
#> Source: local data frame [15 x 2]
#> 
#>    user.name.first user.name.last
#> 1           alfred           wade
#> 2            joann         watson
#> 3              ben         obrien
#> 4             dale        steward
#> 5           elaine         graves
#> 6           jessie        gilbert
#> 7             kyle           beck
#> 8            diane        hawkins
#> 9            allan         hansen
#> 10          javier           hall
#> 11          mattie          perry
#> 12          rafael        hopkins
#> 13           april        carlson
#> 14         kathryn           ford
#> 15          brandy       chambers
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
