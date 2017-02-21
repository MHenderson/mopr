<!-- README.md is generated from README.Rmd. Please edit that file -->
mopr
====

Parse the output of Minion (<http://minion.sourceforge.net>).

Example
-------

### Default options

### `--noprintsols --findallsols`

``` r
library(mopr)

cat(paste(out1, collapse = "\n"))
#> # Minion Version 1.8
#> # HG version: 0
#> # HG last changed date: unknown
#> #  Run at: UTC Tue Feb 21 10:06:36 2017
#> 
#> #    http://minion.sourceforge.net
#> # If you have problems with Minion or find any bugs, please tell us!
#> # Mailing list at: https://mailman.cs.st-andrews.ac.uk/mailman/listinfo/mug
#> # Input filename: /tmp/Rtmp4Ezrzf/tmp.minion
#> # Command line: /home/matthew/bin/minion-1.8/bin/minion -findallsols -noprintsols /tmp/Rtmp4Ezrzf/tmp.minion
#> Parsing Time: 0.000000
#> Setup Time: 0.000000
#> First Node Time: 0.000000
#> Initial Propagate: 0.000000
#> First node time: 0.000000
#> Solve Time: 0.000000
#> Total Time: 0.000000
#> Total System Time: 0.000868
#> Total Wall Time: 0.000965
#> Maximum RSS (kB): 968
#> Total Nodes: 23
#> Problem solvable?: yes
#> Solutions Found: 12

parseMinionOut(out1, options = "--noprintsols --findallsols")
#>   Parsing Time Setup Time First Node Time Initial Propagate
#> 1            0          0               0                 0
#>   First node time Solve Time Total Time Total System Time Total Wall Time
#> 1               0          0          0          0.000868        0.000965
#>   Maximum RSS (kB) Total Nodes Problem solvable? Solutions Found
#> 1              968          23               yes              12
```
