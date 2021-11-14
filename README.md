
<!-- README.md is generated from README.Rmd. Please edit that file -->

# stat545b2

<!-- badges: start -->
<!-- badges: end -->

The goal of this package is to help you to tidy dataframes where
variables have nested values.

## Installation

You can install the latest version of the package by running the
following command in R (you will need to have the pacakge ‘devtools’):

``` r
devtools::install_github("stat545ubc-2021/ballinstat545b2", ref = "v0.1.0")
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

If you would like to run the examples that are in the help document, you
will need to make sure that you have installed the `datateachr` package.
You can then run the following command in R along with one of the
command lines provided in the examples section of the help page:

``` r
#load the datateachr package
suppressPackageStartupMessages(library(datateachr))
```

Here is an example of what the code you would want to run would look
like:

``` r
#load the datateachr package
suppressPackageStartupMessages(library(datateachr))
#execute one of the examples
ballinstat545b2::unnest_and_factor(apt_buildings, parking_type, ",")
```
