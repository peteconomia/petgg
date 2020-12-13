#' @title Config geoms
#' @description configure geoms
#' @import ggplot2

set_geoms_defaults <- function(base_family) {

	geoms <- gsub("geom_", "", ls(pattern = '^geom_', env = as.environment('package:ggplot2')))

	primary_color <- unlist(get_palette()$colors[1])
	secondary_color <- unlist(get_palette()$secondary)

	for(geom in geoms[!geoms %in% c(
		"bin2d",
		"count",
		"freqpoly",
		"histogram",
		"jitter",
		"qq",
		"qq_line",
		"sf_label",
		"sf_text"
	)]) {
		ggplot2::update_geom_defaults(
			geom,
			list(colour = primary_color, fill = primary_color))
	}

	# geoms remove color
	for(geom in c("bar", "col", "area")) {
		ggplot2::update_geom_defaults(geom, list(colour = NA))
	}

	# geoms remove fill
	for(geom in c("density")) {
		ggplot2::update_geom_defaults(geom, list(fill = NA))
	}

	# geom that requires different colors
	for(geom in c("boxplot")) {
		ggplot2::update_geom_defaults(geom, list(colour = secondary_color))
	}

	for(geom in c("line", "point", "vline", "hline", "smooth", "density", "path")) {
		ggplot2::update_geom_defaults(geom, list(size = config$geoms$line$size))
	}

	for(geom in c("rect")) {
		ggplot2::update_geom_defaults(
			geom, list(fill = config$palette$shadow, colour = NA, alpha = config$alpha)
		)
	}

	for(geom in c("smooth")) {
		ggplot2::update_geom_defaults(geom, list(fill = secondary_color))
	}

	for(geom in c("text", "label")) {
		ggplot2::update_geom_defaults(
			geom, list(colour = config$text_color, family = base_family)
		)
	}

}
