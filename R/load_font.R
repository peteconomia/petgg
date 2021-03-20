#' @title load font family
#' @import extrafont

load_font <- function(base_family, prompt) {
	extrafont::loadfonts(quiet = TRUE)
	if (!(base_family %in% names(pdfFonts()))) {
		warning(paste(base_family, "font can't be loaded. Use extrafont::font_import()"))
	}
}