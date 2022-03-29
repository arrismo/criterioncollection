## code to prepare `criterion` dataset goes here


library(readr)

criterion <- read_csv("data-raw/criterion.csv")

usethis::use_data(criterion, overwrite = TRUE)


