out1 <- readLines(file("data-raw/out1.minout", open = "r"))

devtools::use_data(out1)
