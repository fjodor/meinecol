#' Benutzerdefinierte Farbpaletten interpolieren
#'
#' @param palette Name der Farbpalette (String / character). Zur Zeit "alle", "gruen", "drei"
#' @param reverse Boolean: Palette umdrehen?
#' @param ... Zusätzliche Argumente, die an grDevices::colorRampPalette() weitergegeben werden
#' @examples my_pal("alle")  # Liefert eine Funktion!
#' @examples my_pal("alle")(8)
#' @examples my_pal("alle")(8) |> colorspace::swatchplot()
#' @examples my_pal("drei")(8) |> colorspace::swatchplot()
#' @examples my_pal("gruen")(4) |> colorspace::swatchplot()
#' @export

my_pal <- function(palette = "alle", reverse = FALSE, ...) {
  pal <- my_paletten[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
