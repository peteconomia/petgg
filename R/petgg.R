#' @title petgg theme style
#' @import ggplot2

petgg <- function(base_size = config$base_size,
									base_family = config$base_family,
									base_line_size = config$base_line_size,
									base_rect_size = config$base_rect_size,
									axis_title = config$axis_title,
									legend_title = config$legend_title,
									legend_position = config$legend_position,
									legend_direction = config$legend_direction) {

	half_line <- base_size / 2L

	t <- ggplot2::theme(

		# main attributes

		line = ggplot2::element_line(
			colour = "#000000",
			size = base_line_size,
			linetype = 1L,
			lineend = "butt"
		),
		rect = ggplot2::element_rect(
			fill = "#FFFFFF",
			colour = "#000000",
			size = base_rect_size,
			linetype = 1L
		),
		text = ggplot2::element_text(
			family = base_family,
			colour = "#000000",
			size = base_size,
			margin = ggplot2::margin(),
		),

		# Plot Attributes

		plot.tag = ggplot2::element_text(
			size = base_size * 1.5,
			hjust = 0L,
			vjust = 0L,
			margin = ggplot2::margin(b = 10L)
		),
		plot.tag.position = "topleft",
		plot.title = ggplot2::element_text(
			size = base_size * 12 / 8.5,
			hjust = 0L,
			vjust = 0L,
			margin = ggplot2::margin(b = 10L)
		),
		plot.title.position = "plot",
		plot.subtitle = ggplot2::element_text(
			size = base_size * 9.5 / 8.5,
			hjust = 0L,
			vjust = 0L,
			margin = ggplot2::margin(b = 10L)
		),
		plot.caption = ggplot2::element_text(
			size = base_size * 7 / 8.5,
			hjust = 1L,
			vjust = 1L,
			margin = ggplot2::margin(t = half_line * 0.9)
		),
		plot.caption.position = "plot",
		plot.background = NULL,

		plot.margin = ggplot2::margin(base_size/2, base_size/2, 0, 0, "pt"),

		# axis attributes

		axis.text = ggplot2::element_text(size = base_size),
		axis.text.x = ggplot2::element_text(
			vjust = 1,
			margin = ggplot2::margin(t = 4L)
		),
		axis.text.y = ggplot2::element_text(hjust = 1),
		axis.text.x.top = NULL,
		axis.text.y.right = NULL,
		axis.ticks.length.x = NULL,
		axis.ticks.length.x.top = NULL,
		axis.ticks.length.x.bottom = NULL,
		axis.ticks.length.y = NULL,
		axis.ticks.length.y.left = NULL,
		axis.ticks.length.y.right = NULL,

		axis.title = if (axis_title) {
			ggplot2::element_text()
		} else {
			ggplot2::element_blank()
		},
		axis.title.x.top = NULL,
		axis.title.y.right = NULL,

		axis.ticks = ggplot2::element_line(),
		axis.ticks.length = ggplot2::unit(4L, "pt"),
		axis.ticks.x = ggplot2::element_line(
			colour = NULL,
			size = NULL,
			linetype = NULL,
			lineend = NULL
		),
		axis.ticks.y = ggplot2::element_blank(),

		axis.line = ggplot2::element_blank(),

		# legend attributes

		legend.background = ggplot2::element_blank(),

		legend.spacing = ggplot2::unit(2 * half_line, "pt"),
		legend.spacing.x = ggplot2::unit(4L, "pt"),
		legend.spacing.y = NULL,

		legend.key = ggplot2::element_blank(),
		legend.key.size = ggplot2::unit(10L, "pt"),
		legend.key.height = NULL,
		legend.key.width = NULL,

		legend.text = ggplot2::element_text(size = ggplot2::rel(1)),
		legend.text.align = NULL,

		legend.title = if(legend_title) {
			ggplot2::element_text(size = ggplot2::rel(1))
		} else {
			ggplot2::element_blank()
		},

		legend.title.align = NULL,

		legend.position = legend_position,
		legend.direction = legend_direction,
		legend.justification = NULL,
		legend.margin = ggplot2::margin(half_line, half_line, half_line, half_line),
		legend.box = "horizontal",
		legend.box.margin = NULL,
		legend.box.background = NULL,
		legend.box.spacing = NULL,

		# panel attributes

		panel.background = ggplot2::element_blank(),
		panel.border = ggplot2::element_blank(),
		panel.ontop = FALSE,

		panel.spacing = ggplot2::unit(0L, "pt"),
		panel.spacing.x = NULL,
		panel.spacing.y = NULL,

		panel.grid = NULL,
		panel.grid.major = ggplot2::element_line(),
		panel.grid.major.x = ggplot2::element_blank(),
		panel.grid.major.y = ggplot2::element_line(colour = "#dedddd"),
		panel.grid.minor = ggplot2::element_line(),
		panel.grid.minor.x = ggplot2::element_blank(),
		panel.grid.minor.y = ggplot2::element_line(colour = "grey94"),

		# strip attributes (Faceting)

		strip.background = ggplot2::element_rect(
			fill = "#dedddd",
			colour = NA,
			size = 0L
		),
		strip.text = ggplot2::element_text(
			size = ggplot2::rel(0.8),
			margin = ggplot2::margin(t = 0L, r = 0L, b = 0L, l = 0L)
		),

		strip.text.x = ggplot2::element_text(
			margin = ggplot2::margin(t = 0, b = 0)
		),
		strip.text.y = ggplot2::element_text(
			angle = -90L,
			margin = ggplot2::margin(l = 0, r = 0)
		),

		strip.placement = "inside",
		strip.placement.x =  NULL,
		strip.placement.y =  NULL,

		strip.switch.pad.grid = ggplot2::unit(0.1, "cm"),
		strip.switch.pad.wrap = ggplot2::unit(0.1, "cm"),

		complete = TRUE
	)
	t
}
