#' lacuna: gera caixa para aluno preencher com resposta
#'
#' Gera HTML através de [webexercises::fitb] ou LaTeX, segundo o formato do
#' documento sendo gerado.
#'
#' @param answer see [webexercises::fitb]
#' @param width see [webexercises::fitb]
#' @param num see [webexercises::fitb]
#' @param ignore_case see [webexercises::fitb]
#' @param tol see [webexercises::fitb]
#' @param ignore_ws see [webexercises::fitb]
#' @param regex see [webexercises::fitb]
#' @param output 'html' ou 'latex'. Se não fornecido, o formato de saída é
#'               detectado automaticamente
#'
#' @return código HTML ou LaTeX
#' @export
#'
#' @importFrom knitr is_html_output is_latex_output
#' @importFrom webexercises fitb
#'
lacuna <- function(
  answer,
  width = min(40, max(nchar(answer))),
  num = NULL,
  ignore_case = FALSE,
  tol = NULL,
  ignore_ws = TRUE,
  regex = FALSE,
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

    webexercises::fitb(
      answer, width, num, ignore_case, tol, ignore_ws, regex
    )

  } else if (output == 'latex') {

    brancos <- paste0('\\hspace{', width, 'ex}')

    retval <- paste0(
r"(
\fbox{\strut
)",
      brancos,
      '}'
    )

    retval

  }

}
