library(testthat)


# find by spine test
test_that("check that input not as character throws error", {
  expect_error(find_by_spine(1))
})

# find by title test
test_that("check that invalid title throws error", {
  expect_error(find_by_title("The Batman"), "Title not found")

})

# find by director test

test_that("check that dataframe with director is outputted", {
  expect_output(find_by_director("John Woo"), "Find_by_director dataframe generated")
})


# find by boxset title test

test_that("check that dataframe with director is outputted", {
  expect_output(find_boxset("World of Wong Kar Wai"), "Find_boxset dataframe generated")
})








