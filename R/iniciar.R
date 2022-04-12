#' Copy css and js files to local dir
#'
#' @param dir Target dir
#'
#' @return (Invisibly) Logical vector indicating which operation succeeded for each of the files attempted
#'
#' @export
#'
iniciar <- function(dir = 'html_files') {

  target_dir <- normalizePath(dir)
  if (!dir.exists(target_dir))
    dir.create(target_dir)

  supporting <- system.file(
    c(
      'webex.css',
      'webex.js'
    ),
    package = 'exercises'
  )

  rv <- file.copy(
    from = supporting,
    to = target_dir,
    overwrite = TRUE,
    recursive = TRUE,
    copy.date = TRUE
  )

  invisible(rv)

}
