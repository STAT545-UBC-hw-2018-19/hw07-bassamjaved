library(testthat)
library(hw07package)

test_check("hw07package")

context("Box-Cox test")

test_that("Positive values works.", {
  expect_identical(boxcox(2,2), ((2^2)-1)/2)
})

test_that("Negative values works.", {
  expect_identical(boxcox(-5,3,2), (((-5+2)^3)-1)/3)
})

test_that("lambda1 = 0 works", {
  expect_identical(boxcox(2,0), log(2))
  expect_identical(boxcox(-2,0,5), log(-2+5))
})
