#' Set EL colors
#'
#' This function allows you to add EL colors to your ggplotgraphics.
#' NOTE: EL colors include crimson, dark navy, sky blue, orange, lime, charcoal, cool gray, wood, ivory.
#' @export
#' @examples
#' ggplot(mtcars, aes(hp, mpg)) +
#' geom_point(color = el_cols("dark navy"),
#'         size = 4, alpha = .8)


el_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (el_colors)

  el_colors[cols]
}

