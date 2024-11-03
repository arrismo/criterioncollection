# utility function to get imdb id for every movie in the criterion collection

get_imdb_ids <- function(df) {
  # Function to safely get IMDB ID for a single movie
  get_single_movie_id <- function(title, year) {
    tryCatch({
      # Search for the movie
      result <- imdbapi::find_by_title(title)

      # If we got results, try to find the best match
      if (length(result) > 0) {
        # Try to match with year if provided
        if (!is.null(year) && !is.na(year)) {
          year_match <- result[result$Year == year, ]
          if (nrow(year_match) > 0) {
            return(year_match$imdbID[1])
          }
        }
        # If no year match or no year provided, return first result
        return(result$imdbID[1])
      }
      return(NA)
    }, error = function(e) {
      message("Error processing title: ", title, " - ", e$message)
      return(NA)
    })
  }

  # Create progress bar
  #total <- nrow(df)
  #pb <- txtProgressBar(min = 0, max = total, style = 3)

  # Process each movie
  df$imdb_id <- sapply(1:nrow(df), function(i) {
    id <- get_single_movie_id(df$title[i], df$year[i])
    #setTxtProgressBar(pb, i)
    Sys.sleep(0.2)  # Add small delay to avoid rate limiting
    return(id)
  })

  #close(pb)
  return(df)
}
