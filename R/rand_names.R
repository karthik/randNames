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
#' @param n Number of names required. Free users get 100 max and registered RandomAPI users get 500 max.
#'   Register for a free API key here: \url{https://randomapi.com}
#' @param seed A random string to ensure same results
#' @param gender male or female
#' @param nationality Currently takes: \code{AU}, \code{BR}, \code{CA}, \code{CH}, \code{DE}, \code{DK}, \code{ES}, \code{FI}, \code{FR}, \code{GB}, \code{IE}, \code{IR}, \code{NL}, \code{NZ}, \code{TR}, \code{US}
#' @param key An API key for more results per request (500 max for registered RandomAPI users).
#' @import httr
#' @importFrom jsonlite fromJSON
#' @importFrom tibble  as_data_frame
#' @export
#' @examples
#' data <- rand_names(5)
#' # dplyr::select(data, first = name.first, last = name.last)
#'
#'  # x <- 5 %>%
#'  #   rand_names %>%
#'  # dplyr::filter(gender == "female") %>%
#'  #  dplyr::select(name.first, name.last)
rand_names <- function(n = 1, seed = NULL, gender = NULL, nationality = NULL, key = NULL) {
  ee_compact <- function(l) Filter(Negate(is.null), l)
  args <- ee_compact(as.list(c(results = n,
                               seed = seed,
                               gender = gender,
                               nat = nationality,
                               key = key)))
  if(n > 0) {
    # Make api call
    r <- httr::GET("http://api.randomuser.me/", 
                   query = args)
    # Check if it raised an error
    httr::stop_for_status(r)
    # Interpret it
    x <- jsonlite::fromJSON(httr::content(r, as = "text"), flatten = TRUE)
  }
  tibble::as_data_frame(x$results)
}