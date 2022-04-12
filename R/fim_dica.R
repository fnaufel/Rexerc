#' fim_dica
#'
#' End hint block
#'
#' @param output 'html' or 'latex'. If not given, detect automatically.
#'
#' @return HTML or LaTeX code
#' @export
#'
#' @importFrom knitr is_html_output is_latex_output
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

    '</div>\n'

  } else if (output == 'latex') {

    paste0(
      '\n    ',
      '\\vspace{-1.5ex} \\hrulefill \\vspace{1ex} \n\n'
    )

  }

}
