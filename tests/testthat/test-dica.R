test_that("dica: html:", {

  texto_antes <- 'Antes da dica.\n\n'

  texto_dica <- paste0(
    'Este é o texto da dica.\n\n',
    '```{r}\n',
    'ls()\n',
    '```\n\n',
    'Fim da dica.\n\n'
  )

  texto_depois <- 'Depois da dica.\n'

  expect_snapshot(
    cat(
      texto_antes,
      inicio_dica('Dica', output = 'html'),
      texto_dica,
      fim_dica(output = 'html'),
      texto_depois
    )
  )

})

test_that("dica: latex", {

  texto_antes <- 'Antes da dica.\n\n'

  texto_dica <- paste0(
    'Este é o texto da dica.\n\n',
    '```{r}\n',
    'ls()\n',
    '```\n\n',
    'Fim da dica.\n\n'
  )

  texto_depois <- 'Depois da dica.\n'

  expect_snapshot(
    cat(
      texto_antes,
      inicio_dica('Dica', output = 'latex'),
      texto_dica,
      fim_dica(output = 'latex'),
      texto_depois
    )
  )

})

