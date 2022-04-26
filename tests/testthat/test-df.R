
library(testthat)

test_that("check number of rows", {
  expect_equal(nrow(criterion), 1515)
})


test_that("check number of columns", {
  expect_equal(ncol(criterion), 6)
})


test_that("check number of rows", {
  expect_equal(nrow(boxsets), 276)
})


test_that("check number of columns", {
  expect_equal(ncol(boxsets), 3)
})


