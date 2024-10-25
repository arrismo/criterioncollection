## code to prepare `criterion` dataset goes here


library(readr)
library(stringr)
library(rvest)
library(usethis)
library(dplyr)

url <- 'https://www.criterion.com/shop/browse/list?sort=spine_number&direction=asc'
webpage <- read_html(url)

# capture the html node from the webpage for the ranking it is g-spine
rank_data_html <- html_nodes(webpage,'.g-spine')
#Converting the ranking data to text
rank_data <- html_text(rank_data_html)

#Convert rankings to numerical
rank_data<-as.numeric(rank_data)
rank_data<-gsub("\n","",rank_data)

title_data_html <- html_nodes(webpage,'.g-title')
title_data <- html_text(title_data_html)
#remove \n from the title
title_data<-gsub("\n","",title_data)

director_data_html <- html_nodes(webpage,'.g-director')
director_data <- html_text(director_data_html)
#remove \n from the title
director_data<-gsub("\n","",director_data)

country_data_html <- html_nodes(webpage,'.g-country')
country_data <- html_text(country_data_html)
#remove \n from the title
country_data<-gsub(",","",country_data)

year_data_html <- html_nodes(webpage,'.g-year')
year_data <- html_text(year_data_html)
#remove \n from the title
year_data<-gsub("\n","",year_data)


movies_df<-data.frame(spine = rank_data, year = year_data, country = country_data, title = title_data, director = director_data )
movies_df = movies_df[-1,]

write.csv(movies_df,"data-raw/criterion.csv", row.names = FALSE)

criterion <- read_csv("data-raw/criterion.csv")

criterion$country <- gsub("[\r\n]", "", criterion$country)

criterion$country[criterion$country == " Japan"] <- "Japan"


criterion <- get_imdb_ids(criterion)

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
  total <- nrow(df)
  pb <- txtProgressBar(min = 0, max = total, style = 3)

  # Process each movie
  df$imdb_id <- sapply(1:nrow(df), function(i) {
    id <- get_single_movie_id(df$title[i], df$year[i])
    setTxtProgressBar(pb, i)
    Sys.sleep(0.2)  # Add small delay to avoid rate limiting
    return(id)
  })

  close(pb)
  return(df)
}


usethis::use_data(criterion, overwrite = TRUE)



