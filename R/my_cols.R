#' Benutzerdefinierte Farben als Hexcodes extrahieren
#'
#' Falls keine Farben angegeben: gibt alle Farben zurück.
#' @param ... Farbbezeichnung(en) als Strings (character)
#' @return Benannter Vektor mit Hexcodes unserer Farben
#' @examples my_cols()
#' @examples my_cols("Earth yellow")
#' @examples my_cols("Earth yellow", "Dartmouth green")
#' @examples ggplot(mtcars, aes(x = hp, y = mpg)) +
#' geom_point(size = 2.5, col = my_cols("Dartmouth green"))
#' @export

my_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return(mycols)

  mycols[cols]
}
