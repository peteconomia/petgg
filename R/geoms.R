#' @title reset \code{geom_bar}
#' @param width bar width. Default is \code{0.5}
#' @import ggplot2
#' @export
geom_bar <- function(..., width = 0.5) ggplot2::geom_bar(..., width = width)

#' @title reset \code{geom_col}
#' @param width col width. Default is \code{0.5}
#' @import ggplot2
#' @export
geom_col <- function(..., width = 0.5) ggplot2::geom_col(..., width = width)

#' @title reset \code{position_dodge}
#' @param width dodging width. Default is \code{0.5}
#' @import ggplot2
#' @export
position_dodge <- function(..., width = 0.5) ggplot2::position_dodge(..., width = width)
