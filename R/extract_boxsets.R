globalVariables(c(
  "py_run_file"
))

#' Calls the parse API to load boxset dataframe
#'
#' @import Matrix
#' @import reticulate
#'
#'

extract_boxsets <- function() {
  py_run_file("inst/parse_hub_api.py")
  }


