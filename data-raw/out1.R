minion_root <- file.path("/home/matthew/bin/minion-1.8")
minion <- file.path(minion_root, "bin/minion")

qg_element_7_7 <- file.path(minion_root, "benchmarks/Quasigroup/qg-element-7-7.minion")
options_ <- "-findallsols -noprintsols"
command <- paste(minion, options_, qg_element_7_7)

out1 <- system(command, intern = TRUE)

devtools::use_data(out1)
