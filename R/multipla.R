#' Múltipla escolha
#'
#' @param opts Opções see [webexercises::longmcq]
#' @param output 'html' ou 'latex'. Se não fornecido, o formato de saída é
#'               detectado automaticamente
#'
#' @return código HTML ou LaTeX
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
