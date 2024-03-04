#' Indicate what time is it
#'
#' @description details what time is it
#'
#'
#' @param language string indicating the language
#'
#' @return a string with a sentence
#' @export
#'
#' @examples
#' what_time()
#' what_time(language = "es")
#'
#'
#'
what_time <- function(language = "es") {

  rlang::arg_match0(language, c("fr", "en", "es"))

  time <- format(Sys.time(), "%H:%M")

  exclamation <- praise::praise("${Exclamation}")

  switch(
    language,
    fr = sprintf("%s! Il est maintenant %s!", exclamation, time),
    en = sprintf("%s! It is %s now!", exclamation, time),
    es = sprintf("%s! Son las %s ahoraaaaaa!", exclamation, time)
  )
}
