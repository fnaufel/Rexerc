test_that("resposta: html:", {

  texto_antes <- 'Antes da resposta.\n\n'

  texto <- paste0(
    'Este é o texto da resposta.\n\n',
    '```{r}\n',
    'ls()\n',
    '```\n\n',
    'Fim da resposta.\n\n'
  )

  texto_depois <- 'Depois da resposta.\n'

  metadata <- list(url = 'https://github.com/fnaufel/exercises')

  expect_snapshot(
    cat(
      texto_antes,
      inicio_resposta('Resposta', output = 'html', metadata = metadata),
      texto,
      fim_resposta(output = 'html', metadata = metadata),
      texto_depois
    )
  )

})

test_that("resposta: latex", {

  texto_antes <- 'Antes da resposta.\n\n'

  texto <- paste0(
    'Este é o texto da resposta.\n\n',
    '```{r}\n',
    'ls()\n',
    '```\n\n',
    'Fim da resposta.\n\n'
  )

  texto_depois <- 'Depois da resposta.\n'

  metadata <- list(url = 'https://github.com/fnaufel/exercises')

  expect_snapshot(
    cat(
      texto_antes,
      inicio_resposta('Resposta', output = 'latex', metadata = metadata),
      texto,
      fim_resposta(output = 'latex', metadata = metadata),
      texto_depois
    )
  )

})

