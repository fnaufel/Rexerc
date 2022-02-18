#' fim_dica
#'
#' @param output 'html' ou 'latex'. Se não fornecido, o formato de saída é
#'               detectado automaticamente
#'
#' @return código HTML ou LaTeX
#' @export
#'
#' @importFrom knitr is_html_output is_latex_output
#' @importFrom webexercises unhide
#'
fim_dica <- function(
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

    webexercises::unhide()

  } else if (output == 'latex') {

    '\\vspace{-1.5ex} \\hrulefill \\vspace{1ex} \n\n'

  }

}
