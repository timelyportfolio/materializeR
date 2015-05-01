#' Add \href{http://materializecss.com/}{materialize} to your R
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
materialize <- function(..., width = 0, height = 0) {

  # forward options using x
  #   as of now ... is available for folks to be creative
  x = list( options = list( ... ) )

  # create widget
  htmlwidgets::createWidget(
    name = 'materialize',
    x,
    width = width,
    height = height,
    package = 'materializeR'
  )
}
