context("getMinionOptions")

test_that("command line options are parsed correctly", {
  expect_equal(getMinionOptions(out1), c("findallsols", "noprintsols"))
})
