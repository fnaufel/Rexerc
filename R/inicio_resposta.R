#' inicio_resposta
#'
#' @param texto_botao Texto do botão
#' @param ancora Id da âncora HTML com a solução; USADO APENAS PARA SAÍDA PDF,
#'               para gerar link para solução no site
#' @param output 'html' ou 'latex'. Se não fornecido, o formato de saída é
#'               detectado automaticamente
#'
#' @return código HTML ou LaTeX
#' @export
#'
#' @importFrom knitr is_html_output is_latex_output
#'
inicio_resposta <- function(
  texto_botao = 'Resposta',
  ancora = NULL,
  output = NULL
) {

  if (is.null(output))
    output <- ifelse(
      knitr::is_html_output(),
      'html',
      ifelse(
        knitr::is_latex_output(),
        'latex',
        'other'
      )
    )

  if (output == 'html') {

    paste0(
      '<div class="webex-solution" style="overflow-x: hidden;"><button>',
      texto_botao,
      '</button>\n'
    )

  } else if (output == 'latex') {

    url <- rmarkdown::metadata$url

    if (!is.null(url)) {

      if (!endsWith(url, '/'))
        url <- paste0(url, '/')

      if (!is.null(ancora) && !startsWith(ancora, '#'))
        ancora <- paste0('#', ancora)

      inicio <- paste0(texto_botao, '\\ \\ \\hrulefill \n')
      meio <- paste0(url, ancora)
      paste0('\n', inicio, '\n', meio, '\n', '\\begin{comment}\n')

    } else {

      '\n\\begin{comment}'

    }

  }

}
