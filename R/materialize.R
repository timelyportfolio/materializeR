#' Add \href{http://materializecss.com/}{materialize} to your R
#'
#' One and only function offered by \code{materializeR}.  The \code{...} is offered but really not all that helpful
#' currently except for one secret power.  Use of the package \code{htmltools}
#' from RStudio is a highly encouraged ally for \code{materializeR}.
#'
#' @param ... expansion room.  The \code{...} currently are a placeholder for future functionality.
#' @param width \code{integer} width in pixel for container.  \code{width = 0} since the expectation is
#'          for the container to be an invisible byproduct.
#' @param height \code{integer} heightin pixel for container.  \code{height = 0} since the expectation is
#'          for the container to be an invisible byproduct.
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
