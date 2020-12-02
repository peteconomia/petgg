#' @title Color palette petgg theme
scale_palette <- function() {
	find_palette <- get_palette()
	types <- find_palette$colors
	function(n) {
		types[[n]]
	}
}

#' @title reset scale color discrete
#' @import ggplot2
#' @export
scale_color_discrete <- function(...) {
	ggplot2::discrete_scale("colour", "petgg", scale_palette(), ...)
}

#' @title reset scale colour discrete
#' @import ggplot2
#' @export
scale_colour_discrete <- function(...) {
	ggplot2::discrete_scale("colour", "petgg", scale_palette(), ...)
}

#' @title reset scale fill discrete
#' @import ggplot2
#' @export
scale_fill_discrete <- function(...) {
	ggplot2::discrete_scale("fill", "petgg", scale_palette(), ...)
}

#' @title change color scale discrete
#' @export
scale_colour_ordinal <- scale_color_discrete

#' @title change fill scale discrete
#' @export
scale_fill_ordinal <- scale_fill_discrete
