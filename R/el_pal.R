#' Return function to interpolate a EL color palette. Currently the only palette is main,
#' which is crimson and gray
#'
#' @param palette Character name of palette in el_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
el_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- el_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
