#' @title reset ggplot to default theme
#' @description resets ggplot to its default theme. This does not change the colors.
#' @import ggplot2
#' @usage
#' petgg::reset()
#' @export

reset <- function(colors = FALSE) {
	ggplot2::theme_set(theme_grey())
	if (colors) {
		if(exists("petgg_palette")) {
			petgg_palette <<- NULL
		}
	}
}
