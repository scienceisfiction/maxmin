test_that('invalid args are detected', {
  expect_error(qdiff("eggplants are purple"))
  expect_error(qdiff(iris))
})
test_that('NA handling works', {
  expect_error(qdiff(c(1:5, NA), na.rm = FALSE))
  expect_equal(qdiff(c(1:5, NA)), 4)
})
