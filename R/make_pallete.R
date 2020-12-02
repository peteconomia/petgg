#' @title make pallete

make_palette <- function(colors) {
	pall <- list()
	n <- 1
	for(i in colors) {
		pall[[i]] <- c(colors[1:n])
		n <- n + 1
	}
	pall
}
