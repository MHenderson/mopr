getMinionOptions <- function(out) {
  cl <- out[grep("Command line:", out)]
  cl_split <- strsplit(cl, split = " ")[[1]]
  return(gsub("-", "", cl_split[grep("^-", cl_split)]))
}
