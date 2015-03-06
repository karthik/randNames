
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
#>       first      last
#> 1    marsha    brewer
#> 2      lynn   morales
#> 3   kristen     scott
#> 4     arron armstrong
#> 5    shelly      holt
#> 6   leonard fernandez
#> 7  marshall      hart
#> 8     isaac      diaz
#> 9  beatrice   hopkins
#> 10    mario  caldwell
#> 11  beverly     mason
#> 12   bobbie     mills
#> 13      kim      bell
#> 14  roberta    watson
#> 15 kristina   coleman
#> 16    pearl    powell
#> 17    lewis   douglas
#> 18  tiffany  harrison
#> 19   violet     allen
#> 20  lucille  stephens
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
#> 1            izzie        elliott
#> 2             erik           dunn
#> 3           amanda        daniels
#> 4            caleb        sanchez
#> 5            rosie        jenkins
#> 6             luis           lane
#> 7              sam        stevens
#> 8          bernard         little
#> 9          lillian           ross
#> 10           molly       jennings
#> 11            rick      gutierrez
#> 12          brooke         carter
#> 13         bradley           lord
#> 14             jen        steward
#> 15            john        daniels
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
#> 1            jenny           ross
#> 2            vicki           diaz
#> 3            jenny       crawford
#> 4          kaitlin      gutierrez
#> 5              kim           wade
#> 6           ashley           cruz
#> 7           debbie           cole
#> 8              sam         taylor
#> 9            paige        nichols
#> 10           sofia         bowman
#> 11             zoe            cox
#> 12           vicki        gregory
#> 13            emma         larson
#> 14          teresa         garcia
#> 15          sophia         hunter
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
