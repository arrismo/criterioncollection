## code to prepare `criterion` dataset goes here


library(readr)
library(janitor)

criterion <- read_csv("data-raw/criterion.csv")

usethis::use_data(criterion, overwrite = TRUE)


