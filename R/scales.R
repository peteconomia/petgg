#' @title Color pallete petgg theme
get_pallete <- function(name = "main") {
	pallete_colors <- pallete
	types <- pallete_colors[[name]]
	function(n) {
		types[[n]]
	}
}

#' @title reset scale color discrete
#' @import ggplot2
#' @export
scale_color_discrete <- function(...) {
	ggplot2::discrete_scale("colour", "petgg", get_pallete("main"), ...)
}

#' @title reset scale colour discrete
#' @import ggplot2
#' @export
scale_colour_discrete <- function(...) {
	ggplot2::discrete_scale("colour", "petgg", get_pallete("main"), ...)
}

#' @title reset scale fill discrete
#' @import ggplot2
#' @export
scale_fill_discrete <- function(...) {
	ggplot2::discrete_scale("fill", "petgg", get_pallete("main"), ...)
}

#' @title change color scale discrete
#' @export
scale_colour_ordinal <- scale_color_discrete

#' @title change fill scale discrete
#' @export
scale_fill_ordinal <- scale_fill_discrete