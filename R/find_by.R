library(readr)
library(dplyr)


find_by_spine <- function(spine_no) {
  UseMethod("find_by_spine")
}

find_by_spine <- function(spine_no) {
  stopifnot(is.numeric(spine_no))
  criterion_search <- criterion %>%
    filter(rank == spine_no)
  print(criterion_search)
}

find_by_title <- function(film_title) {
  UseMethod("find_by_title")
}

find_by_title <- function(film_title) {
  stopifnot(is.character(film_title))
  film_title <- criterion %>%
    filter(title == film_title)
  View(film_title)
}

find_by_director <- function(film_director) {
  Use_Method("find_by_director")
}

find_by_director <- function(film_director) {
  stopifnot(is.character(film_director))
  criterion_search <- criterion %>%
    filter(director == film_director)
  print(criterion_search)
}

find_boxset <- function(boxset_title) {
  Use_Method("find_boxset")
}

find_boxset <- function(boxset_title) {
  stopifnot(is.character(boxset_title))
  boxset_search <- boxsets %>%
    filter(selection3_name == boxset_title)
  print(boxset_search)
}

#change to lowercase

