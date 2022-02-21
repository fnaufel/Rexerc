#' inicio_dica
#'
#' Begin a hint block
#'
#' @param texto_botao Button text
#' @param output 'html' or 'latex'. If not given, detect automatically.
#'
#' @return HTML or LaTeX code
#' @export
#'
#' @importFrom knitr is_html_output is_latex_output
#'
inicio_dica <- function(
  texto_botao = 'Dica',
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

    paste0(texto_botao, '\\ \\ \\hrulefill \n')

  }

}
