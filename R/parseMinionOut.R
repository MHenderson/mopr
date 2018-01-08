#' Parse the output from Minion
#'
#' @param out Output from Minion as a string.
#'
#' @return List of data.frames containing the parsed results.
#' @export
parseMinionOut <- function(out, options) {
  begin <- grep("Parsing Time:", out)
  end <- grep("Solutions Found:", out)
  tco <- textConnection(out[begin:end])
  df <- as.data.frame(read.dcf(tco), stringsAsFactors = FALSE)
  for(i in c(1:11, 13)) { df[, i] <- as.numeric(df[, i]) }
  return(df)
}
