## code to prepare `criterion` dataset goes here


library(readr)
library(stringr)
library(rvest)

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


movies_df<-data.frame(Rank = rank_data, Year = year_data,Country = country_data, Title = title_data, Director = director_data )
movies_df = movies_df[-1,]

write.csv(movies_df,"data-raw/criterion.csv", Sys.Date(), row.names = FALSE)

criterion <- read_csv("data-raw/criterion.csv")
criterion$country <- gsub("[\r\n]", "", criterion$country)
usethis::use_data(criterion, overwrite = TRUE)


