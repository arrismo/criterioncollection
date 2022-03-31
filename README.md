
## criterioncollection R Package

<!-- badges: start -->
<!-- badges: end -->

## Overview

The [`criterioncollection`](https://github.com/arrismo/criterioncollection) R package is based around a data set of movies included in the Criterion Collection. 

The Criterion Collection is a company dedicated to the restoration and distribution of films deemed to be important culturally, technically, or otherwise influential to the medium. Due to this mission, Criterion's associations have grown far beyond its primary purpose of distribution. A film being a part of the Criterion Collection is often seen as a badge of honor of sorts; the collection is sometimes viewed by cinephiles as a source of must-watch films.

The goal of this package is thus to make this data for movies widely seen as important and influential easy to view and analyze.

## Installation

The current version of criterioncollection can be installed from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("arrismo/criterioncollection")
```

## Loading and Usage

The current development version of criterioncollection can be used to access the data. The dataset, criterion, includes columns for spine_number, year, country, title, and director.

``` r
library(criterioncollection)
head(criterion)
?criterion
```

## References

* Criterion. _Shop All Films_. The Criterion Collection. https://www.criterion.com/shop/browse/list.

* Criterion. _Our Mission_. The Criterion Collection. https://www.criterion.com/about.
