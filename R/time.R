what_time <- function(language = "es") {

  rlang::arg_match0(language, c("fr", "en", "es"))

  time <- format(Sys.time(), "%H:%M")

  exclamation <- praise::praise("${Exclamation}")

  switch(
    language,
    fr = sprintf("%s! Il est maintenant %s!", exclamation, time),
    en = sprintf("%s! It is %s now!", exclamation, time),
    es = sprintf("%s! Sdevtools::document()on las %s ahoraaaaaa!", exclamation, time)
  )
}
