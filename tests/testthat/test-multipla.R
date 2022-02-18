test_that("multipla: html: *** WILL FAIL: RANDOM ID ***", {

  opts <- c(
    'A primeira',
    'A segunda',
    resposta = 'A terceira',
    'A quarta',
    resposta = 'A quinta'
  )

  expect_snapshot(cat(multipla(opts, output = 'html')))

})

test_that("lacuna: latex", {

  opts <- c(
    'A primeira',
    'A segunda',
    resposta = 'A terceira',
    'A quarta',
    resposta = 'A quinta'
  )

  expect_snapshot(cat(multipla(opts, output = 'latex')))

})

