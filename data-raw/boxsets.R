## code to prepare `boxsets` dataset goes here


library(readr)
library(stringr)
library(usethis)
library(dplyr)

boxsets <- read_csv("data-raw/boxsets.csv")

boxsets <- boxsets %>%
  rename(boxset_title = selection3_name,
         movie_title = selection3_selection2_name,
         year = selection3_selection2_year)

boxsets <- boxsets %>%
  select(boxset_title, movie_title, year)


usethis::use_data(boxsets, overwrite = TRUE)
