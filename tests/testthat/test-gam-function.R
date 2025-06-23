test_that("training data exists", {
  expect_true(exists(data(train_data, package = "beachwatch")))
})

test_that("training has critical columns", {
  expect_true(all(c("temp", "beach", "date") %in% colnames(train_data)))
})
