
<!-- README.md is generated from README.Rmd. Please edit that file -->

# criterioncollection R Package

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
# install.packages("remotes")
remotes::install_github("arrismo/CriterionCollection")
?criterion
```

## Loading and Usage

The current development version of criterioncollection can be used to
access the data. The dataset, criterion, includes columns for
spine_number, year, country, title, and director.

``` r
library(criterioncollection)
head(criterion)
#>   rank year              country                title          director
#> 1    1 1937         \nFrance\n\n       Grand Illusion       Jean Renoir
#> 2    2 1954          \nJapan\n\n        Seven Samurai    Akira Kurosawa
#> 3    3 1938 \nUnited Kingdom\n\n    The Lady Vanishes  Alfred Hitchcock
#> 4    4 1973          \nItaly\n\n             Amarcord  Federico Fellini
#> 5    5 1959         \nFrance\n\n        The 400 Blows François Truffaut
#> 6    6 1946         \nFrance\n\n Beauty and the Beast      Jean Cocteau
#>     imdb_id
#> 1 tt0028950
#> 2 tt0047478
#> 3 tt0030341
#> 4 tt0071129
#> 5 tt0053198
#> 6 tt0038348
```

## References

-   Criterion. *Shop All Films*. The Criterion Collection.
    <https://www.criterion.com/shop/browse/list>.

-   Criterion. *Our Mission*. The Criterion Collection.
    <https://www.criterion.com/about>.
