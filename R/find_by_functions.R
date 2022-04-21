
#' Search by Spine Number
#'
#' Output a data frame for specific spine number
#'
#' @param spine_no
#'
#' @export
#' @examples
#' library(criterioncollection)
#' find_by_spine("1")
#'
find_by_spine <- function(spine_no) {
  UseMethod("find_by_spine")
}

find_by_spine <- function(spine_no) {
  spine_search<- criterion[grep(spine_no, criterion$spine), ]
  if (dim(spine_search)[1] == 0) {
    stop("Title not found")
  } else {
    View(spine_search)
    print("Find_by_spine dataframe generated")
  }
}


#' Search by film title
#'
#' Output a data frame for specific film title
#'
#' @param film_title
#'
#' @export
#' @examples
#' library(criterioncollection)
#' find_by_title("Amarcord")
#'
find_by_title <- function(film_title) {
  UseMethod("find_by_title")
}

find_by_title <- function(film_title) {
  film_search<- criterion[grep(film_title, criterion$title), ]
  if (dim(film_search)[1] == 0) {
    stop("Title not found")
  } else {
    View(film_search)
    print("Find_by_title dataframe generated")
  }

}

#' Search by movie director
#'
#' Output a data frame for specific movie director
#'
#' @param film_director
#'
#' @export
#' @examples
#' library(criterioncollection)
#' find_by_director("John Woo")
#'
find_by_director <- function(film_director) {
  Use_Method("find_by_director")
}

find_by_director <- function(film_director) {
  director_search<- criterion[grep(film_director, criterion$director), ]
  if (dim(director_search)[1] == 0) {
    stop("Title not found")
  } else {
    View(director_search)
    print("Find_by_director dataframe generated")
  }
}


#' Search by boxset title
#'
#' Output a data frame for specific boxset
#'
#' @param boxset_title
#'
#' @export
#' @examples
#' library(criterioncollection)
#' find_boxset("The Before Trilogy")
#'
find_boxset <- function(boxset_title) {
  Use_Method("find_boxset")
}

find_boxset <- function(boxset_title) {
  boxset_search<- boxsets[grep(boxset_title, boxsets$boxset_title), ]
  if (dim(boxset_search)[1] == 0) {
    stop("Title not found")
  } else {
    View(boxset_search)
    print("Find_boxset dataframe generated")
  }
}


