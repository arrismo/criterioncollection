
library(testthat)
library(criterioncollection)

test_that("check number of rows", {
  expect_equal(nrow(criterion), 1515)
})


test_that("check number of columns", {
  expect_equal(ncol(criterion), 5)
})
