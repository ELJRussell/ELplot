#' Add EL theme to ggplot chart
#'
#' This function allows you to add the EL theme to your ggplotgraphics.
#' NOTE: you may need to run extrafonts::font_import() and extrafonts::loadfonts() to use the Calibri font.
#' @export
#' @examples
#' line <- ggplot(line_df, aes(x = year, y = lifeExp)) +
#' geom_line(colour = "#007f7f", size = 1) +
#' geom_hline(yintercept = 0, size = 1, colour="#333333") +
#' el_theme()

el_theme <- function(..., base_size = 12) {
  font <- "Calibri"

  ggplot2::theme(
    # Text
    text = element_text(family = font, size = base_size),

    # Plot
    plot.title.position = "plot",
    plot.title = element_text(size = 20, face = "bold", color = "black", vjust = 0.02, hjust = 0.00),
    plot.subtitle = element_text(color = "black", hjust = 0.0),
    plot.caption = element_text(size = 8, face = "italic",
                                color = "black"), legend.position = "top", legend.text.align = 0,
    plot.background = ggplot2::element_rect(fill = "#FFFFFF"),

    #Legend
    legend.background = ggplot2::element_blank(), legend.title = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank(),
    legend.text = ggplot2::element_text(family = font, color = "#222222"),
    #Axis format
    axis.title = ggplot2::element_text(color = "black", face = "bold"),
    axis.text = ggplot2::element_text(family = font, color = "#222222"),
    axis.text.x = ggplot2::element_text(margin = ggplot2::margin(5, b = 10)),
    axis.ticks = ggplot2::element_blank(),
    axis.line = ggplot2::element_blank(),

    #Grid lines and Panel Background
    panel.grid.major.x = ggplot2::element_line(color="#ebebeb",size=.2),
    panel.grid.major.y = ggplot2::element_line(color="gray",size=.2),
    panel.grid.minor = ggplot2::element_line(color="#ebebeb",size=.2),
    panel.background = ggplot2::element_rect(fill = "#FFFFFF"),
    panel.border = ggplot2::element_blank(),

    #Strip background (#This sets the panel background for facet-wrapped plots to white, removing the standard grey ggplot background colour and sets the title size of the facet-wrap title to font size 22)
    strip.background = ggplot2::element_rect(fill = "white"),
    strip.text = ggplot2::element_text(size = 22, hjust = 0)
  )
}
