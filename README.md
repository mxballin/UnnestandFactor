
<!-- README.md is generated from README.Rmd. Please edit that file -->

# stat545b2

<!-- badges: start -->
<!-- badges: end -->

The goal of this package is to help you to tidy dataframes where
variables have nested values.

## Installation

You can install the latest version of the package by loading (after
installing if you do not already have it) the package devtools and
running the following command in R:

``` r
#devtools::install_github("stat545ubc-2021/ballinstat545b2", ref = "0.1.0")
```

``` r
devtools::install()
#> 
#>      checking for file ‘/Users/mxballin/Documents/GitHub/ballinstat545b2/DESCRIPTION’ ...  ✓  checking for file ‘/Users/mxballin/Documents/GitHub/ballinstat545b2/DESCRIPTION’
#>   ─  preparing ‘ballinstat545b2’:
#>      checking DESCRIPTION meta-information ...  ✓  checking DESCRIPTION meta-information
#>   ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>    Omitted ‘LazyData’ from DESCRIPTION
#>   ─  building ‘ballinstat545b2_0.1.0.tar.gz’
#>      
#> Running /Library/Frameworks/R.framework/Resources/bin/R CMD INSTALL \
#>   /var/folders/hb/0wv8x91n6_q2vc4w8_92vztr0000gn/T//Rtmp3vApil/ballinstat545b2_0.1.0.tar.gz \
#>   --install-tests 
#> * installing to library ‘/Library/Frameworks/R.framework/Versions/4.1/Resources/library’
#> * installing *source* package ‘ballinstat545b2’ ...
#> ** using staged installation
#> ** R
#> ** tests
#> ** byte-compile and prepare package for lazy loading
#> ** help
#> *** installing help indices
#> *** copying figures
#> ** building package indices
#> ** testing if installed package can be loaded from temporary location
#> ** testing if installed package can be loaded from final location
#> ** testing if installed package keeps a record of temporary installation path
#> * DONE (ballinstat545b2)
```

## Help with using the function

This package only contains one function, `unnest_and_factor`. For more
information on how to use this function and to see examples of how it
can be used with examples utilizing datasets from the `datateachr`
package, after installing the package, run the following commands in R:

``` r
suppressPackageStartupMessages(library(ballinstat545b2))
?unnest_and_factor
```

If you would like to run the examples, you will need to make sure that
you have installed the `datateachr` package. You can then run the
following command in R along with one of the command lines provided in
the examples section of the help page:

``` r
#load the datateachr package
suppressPackageStartupMessages(library(datateachr))
```
