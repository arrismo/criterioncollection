#' Data for movies in the Criterion Collection as of March 2022
#'
#' 1,515 items in the Criterion Collection, including box sets, from
#' <https://www.criterion.com/shop/browse/list>.
#'
#' @format A data frame of 1,515 rows with each row representing an item, such
#' as a movie or box set, in the Criterion Collection.
#' \describe{
#'   \item{rank}{Spine number of the movie or box set}
#'   \item{year}{Year in which the movie was released}
#'   \item{country}{Country in which the movie was made}
#'   \item{title}{Movie or box set title}
#'   \item{director}{Director of the movie}
#' }
"criterion"

#' Data for boxsets of movies from the Criterion Collection as of March 2022
#'
#' @format  A data frame of 276 rows with each row representing the boxset title and the movies in the set.
#'
#' \describe{
#' \item{boxset_title}{Name of boxset title}
#' \item{movie_title}{Name of movie in boxset}
#' \item{year}{Year in which the movie was released}
#'
#' }
#'
#'
"boxsets"

