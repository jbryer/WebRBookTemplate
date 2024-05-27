
# WebRBookTemplate

<!-- badges: start -->
<!-- badges: end -->

The goal of WebRBookTemplate is to …

## Installation

You can install the development version of WebRBookTemplate like so:

``` r
remotes::install_github('jbryer/WebRBookTemplate')
```

## Building Package Locally

``` r
usethis::use_package('dplyr')
devtools::document()
devtools::install()
```

## Using the package

### Loess Visualization

``` r
library(WebRBookTemplate)
data("faithful")
WebRBookTemplate::loess_vis(formula = eruptions ~ waiting, data = faithful)
```

### Loess Shiny Application

``` r
WebRBookTemplate::loess_shiny()
```
