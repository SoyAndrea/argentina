test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("what_time() works", {
  expect_type(what_time(), "character")
  expect_snapshot(what_time(language = "wee"), error = TRUE)
})

