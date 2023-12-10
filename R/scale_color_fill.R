#' Color scale-Konstruktor für benutzerdefinierte Farben
#'
#' @param palette Name (String) der Farbpalette
#' @param discrete Boolean: Farbskala diskret oder nicht?
#' @param reverse Boolean: Skala umdrehen?
#' @param ... Weitere Parameter, die an discrete_scale() oder scale_color_gradientn() weitergegeben werden, je nach discrete TRUE / FALSE
#' @examples
#' ggplot(mtcars, aes(x = hp, y = mpg, color = factor(cyl))) +
#'   geom_point(size = 3) +
#'   scale_color_meinefa()
#'
#' ggplot(mtcars, aes(x = hp, y = mpg, color = factor(cyl))) +
#'   geom_point(size = 3) +
#'   scale_color_meinefa(palette = "drei")
#' @export

scale_color_meinefa <- function(palette = "alle", discrete = TRUE, reverse = FALSE, ...) {
  pal <- my_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("my_", palette),
                   palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}

#' Fill scale-Konstruktor für benutzerdefinierte Farben
#'
#' @param palette Name (String) der Farbpalette
#' @param discrete Boolean: Farbskala diskret oder nicht?
#' @param reverse Boolean: Skala umdrehen?
#' @param ... Weitere Parameter, die an discrete_scale() oder scale_color_gradientn() weitergegeben werden, je nach discrete TRUE / FALSE
#' @examples
#' ggplot(mtcars, aes(x = factor(cyl), fill = interaction(am, gear, sep = "/"))) +
#'   geom_bar(position = position_stack()) +
#'   scale_fill_meinefa(name = "Automatik / Gänge")
#'
#' ggplot(mtcars, aes(x = factor(cyl), fill = interaction(am, gear, sep = "/"))) +
#'   geom_bar(position = position_stack()) +
#'   scale_fill_meinefa(name = "Automatik / Gänge", palette = "drei")  # Ohne grau
#' @export

scale_fill_meinefa <- function(palette = "alle", discrete = TRUE, reverse = FALSE, ...) {
  pal <- my_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("my_", palette),
                   palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
