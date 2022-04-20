#' fim_resposta
#'
#' End answer block
#'
#' @param output 'html' or 'latex'. If not given, detect automatically.
#' @param metadata yaml metadata for document
#'
#' @return HTML or LaTeX code
#' @export
#'
#' @importFrom knitr is_html_output is_latex_output
#'
fim_resposta <- function(
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

    '</div>\n'

  } else if (output == 'latex') {

    url <- metadata$url

    if (!is.null(url)) {

      paste0(
        '\n     \\end{comment}',
        '\n     \\end{trivlist}'
      )


    } else {

      '\n     \\end{comment}\n'

    }

  }

}
