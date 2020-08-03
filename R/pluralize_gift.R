#' Takes a noun and makes it plural
#'
#' @param gift A string or vector of strings
#'
#' @return A string or vector of strings with the pluralized words
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#' @import english
#'
#' @export
pluralize_gift <- function(gift){

  gift[!str_detect(gift, "y$") & !str_detect(gift, "oose$")] <- glue("{gift[!str_detect(gift, 'y$') & !str_detect(gift, 'oose$')]}s")
  gift[str_detect(gift, "y$")] <- gift[str_detect(gift, "y$")] %>%
    str_replace("y$", "ies")
  gift[str_detect(gift, "oose$")] <- gift[str_detect(gift, "oose$")] %>%
    str_replace("oose$", "eese")

  return(gift)

}
