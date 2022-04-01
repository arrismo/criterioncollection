## code to prepare `criterion` dataset goes here


library(readr)
library(stringr)

criterion <- read_csv("data-raw/criterion.csv")
criterion$country <- gsub("[\r\n]", "", criterion$country)


usethis::use_data(criterion, overwrite = TRUE)


