
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
#>      first      last
#> 1      ben    nguyen
#> 2    brett  lawrence
#> 3  jessica   jackson
#> 4   margie     dixon
#> 5      ida      wade
#> 6  candice     lopez
#> 7     lily    snyder
#> 8     gina fernandez
#> 9  gregory    willis
#> 10 charles    fowler
#> 11    mike     myers
#> 12  harold    rivera
#> 13    rita   holland
#> 14    krin    jensen
#> 15  albert      hart
#> 16   joyce   barnett
#> 17 phyllis      hart
#> 18   holly mitchelle
#> 19   jesus patterson
#> 20  milton      ward
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
