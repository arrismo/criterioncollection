globalVariables(c(
  "criterion","boxsets"
))
#' Search by Spine Number
#'
#'
#' Output a data frame for specific spine number
#'
#' @param spine_no spine number
#' @importFrom utils View
#' @import dplyr
#' @export
#' @examples
#' \donttest{
#'
#' find_by_spine("1")
#'}
find_by_spine <- function(spine_no) {
  UseMethod("find_by_spine")
}

find_by_spine <- function(spine_no) {
  if(!is.character(spine_no)){
    stop("Spine number should be a character")
  }else{
  spine_search<- criterion[grep(spine_no, criterion$spine), ]
  if (dim(spine_search)[1] == 0) {
    stop("Spine number not found")
  } else {
    spine_df <- imdbapi::find_by_id(spine_search$imdb_id[1]) %>%
      rename("imdb_id" = "imdbID") %>%
      inner_join(spine_search, by = c("imdb_id"))
    if(interactive()){
      View(spine_df)}
    print("Find_by_spine dataframe generated")
    print(spine_df)
  }
  }
}


#' Search by film title
#'
#' Output a data frame for specific film title
#'
#' @param film_title name of film
#' @import dplyr
#' @export
#' @examples
#' \donttest{
#'
#' find_by_title("Amarcord")
#' }
find_by_title <- function(film_title) {
  UseMethod("find_by_title")
}

find_by_title <- function(film_title) {
  film_search<- criterion[grep(film_title, criterion$title), ]
  if (dim(film_search)[1] == 0) {
    stop("Title not found")
  } else {
    title_df <- imdbapi::find_by_id(film_search$imdb_id[1]) %>%
      rename("imdb_id" = "imdbID") %>%
      inner_join(film_search, by = c("imdb_id"))
    if(interactive()){
      View(title_df)}
    print("Find_by_title dataframe generated")
    print(title_df)
  }

}

#' Search by movie director
#'
#' Output a data frame for specific movie director
#'
#' @param film_director name of film director
#'
#'
#' @export
#' @examples
#' \donttest{
#'
#' find_by_director("John Woo")
#' }
find_by_director <- function(film_director) {
  Use_Method("find_by_director")
}

# option to turn behavior her
find_by_director <- function(film_director) {
  director_search<- criterion[grep(film_director, criterion$director), ]
  if (dim(director_search)[1] == 0) {
    stop("Director not found")
  } else {
    if(interactive()){
      View(director_search)}
    print("Find_by_director dataframe generated")
    print(director_search)
  }
}

#'
#' Search by boxset title
#'
#' Output a data frame for specific boxset
#'
#' @param boxset_title title of boxset
#'
#'
#' @export
#' @examples
#' \donttest{
#'
#' find_boxset("The Before Trilogy")
#' }
#'
find_boxset <- function(boxset_title) {
  Use_Method("find_boxset")
}

find_boxset <- function(boxset_title) {
  boxset_search <- boxsets[grep(boxset_title, boxsets$boxset_title), ]
  if (dim(boxset_search)[1] == 0) {
    stop("Boxset Title not found")
  } else {
    # if(interactive()){
    #   View(boxset_search)}
    print(boxset_search)
    print("Find_boxset dataframe generated")
  }
}


