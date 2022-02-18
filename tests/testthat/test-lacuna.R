test_that("lacuna: html", {

  expect_snapshot(cat(lacuna(1234, output = 'html')))

})

test_that("lacuna: latex", {

  expect_snapshot(cat(lacuna(1234, output = 'latex')))

})

test_that("lacuna: html w decimals", {

  expect_snapshot(cat(lacuna(1234.567, output = 'html')))

})

test_that("lacuna: latex w decimals", {

  expect_snapshot(cat(lacuna(1234.567, output = 'latex')))

})

