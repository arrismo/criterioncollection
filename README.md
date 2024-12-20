
<!-- README.md is generated from README.Rmd. Please edit that file -->

# criterioncollection <img src = "man/figures/criterion_hex.png" align = "right" height = "139" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/arrismo/CriterionCollection/workflows/R-CMD-check/badge.svg)](https://github.com/arrismo/CriterionCollection/actions)
<!-- badges: end -->

## Overview

The
[`criterioncollection`](https://github.com/arrismo/criterioncollection)
R package is based around a data set of movies included in the Criterion
Collection.

The Criterion Collection is a company dedicated to the restoration and
distribution of films deemed to be important culturally, technically, or
otherwise influential to the medium. Due to this mission, Criterion’s
associations have grown far beyond its primary purpose of distribution.
A film being a part of the Criterion Collection is often seen as a badge
of honor of sorts; the collection is sometimes viewed by cinephiles as a
source of must-watch films.

The goal of this package is thus to make this data for movies widely
seen as important and influential easy to view and analyze.

## Installation

The current version of criterioncollection can be installed from
[GitHub](https://github.com/) with:

``` r
install.packages("remotes")
remotes::install_github("arrismo/criterioncollection")
```

## Loading and Usage

The current version of criterioncollection can be used primarily to
access data on the Criterion Collection. The dataset, criterion,
contains every item in the Criterion Collection and includes columns for
`spine_number`, `year`, `country`, `title`, and `director`.

``` r
library(criterioncollection)
View(criterion)
?criterion
```

You can also view the boxsets dataset that contains the boxset title,
individual movie title, and year released.

``` r
View(boxsets)
?boxsets
```

You can use the following functions to find films by the director,
spine, or film title. Each function outputs a data frame based on your
input.

The `find_by_director()` function returns the data from the criterion
data set for all movies in the Criterion Collection by a certain
director.

``` r
find_by_director("John Woo")
#> [1] "Find_by_director dataframe generated"
#> # A tibble: 3 × 6
#>   spine year  country                   title                   director imdb_id
#>   <dbl> <chr> <chr>                     <chr>                   <chr>    <chr>  
#> 1     8 1989  "\t\t\t\t\tHong Kong\t\t" The Killer              John Woo tt1136…
#> 2     9 1992  "\t\t\t\t\tHong Kong\t\t" Hard Boiled             John Woo tt0104…
#> 3  1174 1979  "\t\t\t\t\tHong Kong\t\t" Last Hurrah for Chival… John Woo <NA>
```

The `find_by_title()` and `find_by_spine()` functions return not only
the data from the criterion data set, but also data from the **imdbapi**
package. This will include more data for a single movie than the
Criterion Collection supplies, such as its actors and its IMDb user
rating.

``` r
find_by_title("Grand Illusion")
#> [1] "Find_by_title dataframe generated"
#> # A tibble: 1 × 30
#>   Title        Year  Rated Released   Runtime Genre Director Writer Actors Plot 
#>   <chr>        <chr> <chr> <date>     <chr>   <chr> <chr>    <chr>  <chr>  <chr>
#> 1 The Grand I… 1937  Not … 1938-09-12 113 min Dram… Jean Re… Charl… Jean … Duri…
#> # ℹ 20 more variables: Language <chr>, Country <chr>, Awards <chr>,
#> #   Poster <chr>, Ratings <list>, Metascore <chr>, imdbRating <dbl>,
#> #   imdbVotes <dbl>, imdb_id <chr>, Type <chr>, DVD <date>, BoxOffice <chr>,
#> #   Production <chr>, Website <chr>, Response <chr>, spine <dbl>, year <chr>,
#> #   country <chr>, title <chr>, director <chr>
```

Not all movies in the Criterion Collection have a spine number, but the
`find_by_spine()` function can be helpful for the \>1000 movies that do.

``` r
find_by_spine("1")
#> [1] "Find_by_spine dataframe generated"
#> # A tibble: 1 × 30
#>   Title        Year  Rated Released   Runtime Genre Director Writer Actors Plot 
#>   <chr>        <chr> <chr> <date>     <chr>   <chr> <chr>    <chr>  <chr>  <chr>
#> 1 The Grand I… 1937  Not … 1938-09-12 113 min Dram… Jean Re… Charl… Jean … Duri…
#> # ℹ 20 more variables: Language <chr>, Country <chr>, Awards <chr>,
#> #   Poster <chr>, Ratings <list>, Metascore <chr>, imdbRating <dbl>,
#> #   imdbVotes <dbl>, imdb_id <chr>, Type <chr>, DVD <date>, BoxOffice <chr>,
#> #   Production <chr>, Website <chr>, Response <chr>, spine <dbl>, year <chr>,
#> #   country <chr>, title <chr>, director <chr>
```

The package also contains a dataset with only the boxsets and the movies
in those boxsets. The contents of individual boxsets can be viewed using
a similar function, find_boxset.

``` r
find_boxset("The Koker Trilogy")
#> # A tibble: 3 × 3
#>   boxset_title      movie_title                   year
#>   <chr>             <chr>                        <dbl>
#> 1 The Koker Trilogy Where Is the Friend’s House?  1987
#> 2 The Koker Trilogy And Life Goes On              1987
#> 3 The Koker Trilogy Through the Olive Trees       1987
#> [1] "Find_boxset dataframe generated"
```

## References

- Criterion. *Shop All Films*. The Criterion Collection.
  <https://www.criterion.com/shop/browse/list>.

- Criterion. *Our Mission*. The Criterion Collection.
  <https://www.criterion.com/about>.

- Criterion. *Box Sets*. The Criterion Collection.
  <https://www.criterion.com/shop/collection/380-box-sets>
