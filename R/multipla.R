#' multipla
#'
#' Generate multiple choice question (long)
#'
#' @param opts Choices see [webexercises::longmcq]
#' @param output 'html' or 'latex'. If not given, detect automatically.
#'
#' @return HTML or LaTeX code
#' @export
#'
#' @importFrom knitr is_html_output is_latex_output
#' @importFrom webexercises longmcq
#'
multipla <- function(
  opts,
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

    nomes <- names(opts)
    nomes[which(nomes == 'resposta')] <- 'answer'
    names(opts) <- nomes

    webexercises::longmcq(opts)

  } else if (output == 'latex') {

    inicio <- r'(
    \begin{enumerate}\def\labelenumi{(\alph{enumi})}
    )'

    fim <- r'(
    \end{enumerate}
    )'

    meio <- paste(
      rep('\\item', length(opts)),
      opts,
      collapse = '\n'
    )

    paste0(inicio, meio, fim)

  }

}
