#' @title get pallete colors
#' @param invert is a logical, inverts the order of colors. Default is \code{FALSE}
#' @usage
#' petgg::get_colors()
#' petgg::get_colors(invert = T)
#' @export

get_colors <- function(pallete_name = "main", invert = FALSE) {
	get <- pallete[[pallete_name]]
	pallete_len <- length(get)
	pallete_colors <- get[pallete_len]
	if(!invert) {
		unlist(pallete_colors)
	} else {
		rev(unlist(pallete_colors))
	}
}