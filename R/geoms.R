gap_bar <- function(width, size) {
	gap_sizes = list(
		s = 0.9,
		m = 0.6,
		b = 0.3
	)

	# default width
	bar_width <- config$geoms$bar$width

	gap <- bar_width

	if(!is.null(size) && !(size %in% names(gap_sizes))) {
		gap <- bar_width
		message(paste0(
			"Invalid gap size, using default width ", bar_width, " to control gap"
		))
	}

	if(!is.null(width) && ((width != bar_width) || (width == bar_width)) && !is.null(size)) {
		gap <- gap_sizes[[size]]
	}

	if(is.null(width) && !is.null(size)) {
		gap <- gap_sizes[[size]]
	}
	if(is.null(width) && is.null(size)) {
		gap <- bar_width
	}
	gap
}

#' @title reset \code{geom_bar}
#' @param width bar width. Default is \code{0.5}
#' @param gap, is a character, gap size, \code{"s"} small, \code{"m"} medium or \code{"b"} big. Default is \code{NULL}
#' @import ggplot2
#' @export
geom_bar <- function(..., width = config$geoms$bar$width, gap = NULL) ggplot2::geom_bar(..., width = gap_bar(width, gap))

#' @title reset \code{geom_col}
#' @param width col width. Default is \code{0.5}
#' @param gap, is a character, gap size, \code{"s"} small, \code{"m"} medium or \code{"b"} big. Default is \code{NULL}
#' @import ggplot2
#' @export
geom_col <- function(..., width = config$geoms$bar$width, gap = NULL) ggplot2::geom_col(..., width = gap_bar(width, gap))

#' @title reset \code{position_dodge}
#' @param width dodging width. Default is \code{0.5}
#' @export
position_dodge <- function(..., width = 0.5) ggplot2::position_dodge(..., width = width)
