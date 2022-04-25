
library(testthat)

test_that("check number of rows", {
  expect_equal(nrow(criterion), 1519)
})


test_that("check number of columns", {
  expect_equal(ncol(criterion), 5)
})


test_that("check number of rows", {
  expect_equal(nrow(boxsets), 276)
})


test_that("check number of columns", {
  expect_equal(ncol(boxsets), 3)
})


