#' @title check if is valid color
is_valid_color <- function(this_color) all(grepl("^#[0-9A-F]{6}$", this_color) == TRUE)

#' @title get palette colors
get_palette <- function() {
	if (exists("petgg_palette") && !is.null(petgg_palette)) {
		if (!is.null(petgg_palette$colors) &
				length(petgg_palette$colors) > 1 &
				is_valid_color(petgg_palette$colors)
				) {
			list(
				colors = make_palette(petgg_palette$colors),
				secondary = if(!is.null(petgg_palette$secondary) & is_valid_color(petgg_palette$secondary)){
					petgg_palette$secondary
				} else {
					petgg_palette$colors[2]
				}
			)
		}
	} else {
		list(
			colors = make_palette(config$palette$colors),
			secondary = config$palette$secondary
		)
	}
}
