#' @title set petgg theme
#' @description set petgg as default [ggplot2] theme
#' @param base_size is a numeric, font size in pts. Default is \code{12}
#' @param base_family is a character, font family. Default is \code{"Helvetica"}
#' @param base_line_size is a numeric, base size for line elements. Default is \code{0.5}
#' @param base_rect_size is a numeric, base size for rect elements. Default is \code{0.5}
#' @param axis_title is a logical, \code{TRUE} shows the axis title, \code{FALSE} hides. Default is \code{FALSE}
#' @param legend_position is a character, control legend position. Default is \code{"bottom"}
#' @param legend_title is a logical, \code{TRUE} show the legend title. Default is \code{FALSE}
#' @import ggplot2
#' @usage
#' petgg::set_theme()
#' @details
#' Always load the package after \code{ggplot2} or \code{tidyverse}
#' @examples
#' petgg::set_theme() # Default options
#' petgg::set_theme(base_size = 14, base_family = "Times New Roman")
#' petgg::set_theme(base_size = 13, axis_title = T)
#' petgg::set_theme(legend_title = T, legend_position = "top")
#' @note
#' More info https://ggplot2.tidyverse.org/reference/theme.html
#' @export
set_theme <- function(base_size = config$base_size,
											base_family = config$base_family,
											base_line_size = config$base_line_size,
											base_rect_size = config$base_rect_size,
											axis_title = config$axis_title,
											legend_title = config$legend_title,
											legend_position = config$legend_position,
											legend_direction = config$legend_direction,
											palette = NULL) {
	# petgg_pallete is global var
	if(!is.null(palette)) {
		petgg_palette <<- palette
	}

	set_geoms_defaults(base_family = base_family)

	ggplot2::theme_set(petgg(
		base_size = base_size,
		base_family = base_family,
		base_line_size = base_line_size,
		base_rect_size = base_rect_size,
		axis_title = axis_title,
		legend_title = legend_title,
		legend_position = legend_position,
		legend_direction = legend_direction
	))

}
