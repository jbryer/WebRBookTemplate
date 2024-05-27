
# WebRBookTemplate

<!-- badges: start -->

[![R-CMD-check](https://github.com/jbryer/WebRBookTemplate/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/jbryer/WebRBookTemplate/actions/workflows/R-CMD-check.yaml)
[![webr-build-binary](https://github.com/jbryer/WebRBookTemplate/actions/workflows/deploy-cran-repo.yaml/badge.svg)](https://github.com/jbryer/WebRBookTemplate/actions/workflows/deploy-cran-repo.yml)
[![Quarto
Book](https://github.com/jbryer/WebRBookTemplate/actions/workflows/quarto-build.yaml/badge.svg)](https://github.com/jbryer/WebRBookTemplate/actions/workflows/quarto-build.yaml)
<!-- badges: end -->

This repository is adapted from this repo:
<https://github.com/coatless-tutorials/webr-github-action-wasm-binaries/tree/main>

The goal of this repository is to:

1.  Be an R package containing functions and data that will be used for
    a…
2.  Quarto book site.
3.  Make the package available as a
    [webR](https://docs.r-wasm.org/webr/latest/) package. Specifically,
    the Quarto book site will included embedded Shiny applications using
    the
    [`shinylive-r`](https://github.com/coatless-quarto/r-shinylive-demo)
    Quarto extension. To provide maximum flexibility, Shiny applications
    are implemented in the R package. See
    [loess_shiny.R](R/loess_shiny.R) for example. This way, the Shiny
    application can be…

- Run locally using the `loess_shiny()` function.
- Deployed to any Shiny server by creating an `app.R` file that calls
  this function (see [inst/loess_shiny/app.R](inst/shiny/app.R) for
  example).
- Be embedded within a Quarto page using `shinylive` (i.e. no server
  required).

## Installation

You can install the development version of WebRBookTemplate like so:

``` r
remotes::install_github('jbryer/WebRBookTemplate')
```

## Building Package Locally

``` r
usethis::use_package('dplyr')
usethis::use_tidy_description()
devtools::document()
devtools::install()
devtools::check()
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
