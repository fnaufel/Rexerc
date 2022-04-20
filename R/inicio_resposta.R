#' inicio_resposta
#'
#' Begin answer block
#'
#' @param texto_botao Button text
#' @param output 'html' or 'latex'. If not given, detect automatically.
#' @param metadata yaml metadata for document
#'
#' @return HTML or LaTeX code
#' @export
#'
#' @importFrom knitr is_html_output is_latex_output
#'
inicio_resposta <- function(
  texto_botao = 'Resposta',
  output = NULL,
  metadata = rmarkdown::metadata
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

    url <- metadata$url

    if (!is.null(url)) {

      paste0(
        '\n     \\begin{trivlist} \\raggedleft\n',
        '     \\item[\\bfseries ', texto_botao, ':] ',
        '\\url{', url, '}',
        '\n     \\begin{comment}\n'
      )

    } else {

      '\n     \\begin{comment}\n'

    }

  }

}
