#' inicio_dica
#'
#' @param texto_botao Texto do botão
#' @param output 'html' ou 'latex'. Se não fornecido, o formato de saída é
#'               detectado automaticamente
#'
#' @return código HTML ou LaTeX
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
      '\n<div class="webex-solution" style="overflow-x: hidden;"><button>',
      texto_botao,
      '</button>\n'
    )

  } else if (output == 'latex') {

    paste0(texto_botao, '\\ \\ \\hrulefill \n')

  }

}
