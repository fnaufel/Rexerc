#' fim_resposta
#'
#' @param output 'html' ou 'latex'. Se não fornecido, o formato de saída é
#'               detectado automaticamente
#'
#' @return código HTML ou LaTeX
#' @export
#'
#' @importFrom knitr is_html_output is_latex_output
#'
fim_resposta <- function(
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

    url <- rmarkdown::metadata$url

    if (!is.null(url)) {

      paste0(
        '\n\\end{comment}\n',
        '\\vspace{-1.5ex} \\hrulefill \\vspace{1ex} \n\n'
      )

    } else {

      '\n\\end{comment}\n'

    }

  }

}
