#' Random name generator
#'
#' This function grabs a list of random names from the random user generator
#'
#' The return object contains the following fields: seed,  user.password,
#' user.sha256, user.cell, user.name.title, user.location.city,
#' user.picture.medium, user.gender, user.salt, user.registered, user.SSN,
#' user.name.first, user.location.state, user.picture.thumbnail,  user.email,
#' user.md5, user.dob, user.version, user.name.last, user.location.zip,
#' user.NINO,  user.username, user.sha1, user.phone, user.nationality,
#' user.location.street,  user.picture.large.
#'
#' @param n Number of names required. It's a public unrestricted API so be a
#'   good citizen and don't hammer it hard.
#' @import httr
#' @importFrom jsonlite fromJSON
#' @importFrom dplyr tbl_df rbind_all
#' @export
#' @examples 
#' library(dplyr)
#' 5 %>%
#' rand_names %>%
#' select(first = user.name.first, last = user.name.last)
#'
#'  x <- 5 %>%
#'    rand_names %>%
#'   filter(user.gender == "female") %>%
#' select(user.name.first, user.name.last)
rand_names <- function(n) {
  x <- list()
  if(n > 0) {
    for(i in 1:n) {
      x[i] <- jsonlite::fromJSON(httr::content(httr::GET("http://api.randomuser.me/"), as = "text"), flatten = TRUE)
    }
  }
  tbl_df(rbind_all(x))
}
