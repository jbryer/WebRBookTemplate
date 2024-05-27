
# WebRBookTemplate

<!-- badges: start -->

[![R-CMD-check](https://github.com/WebRBookTemplate/webr-github-action-wasm-binaries/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/WebRBookTemplate/webr-github-action-wasm-binaries/actions/workflows/R-CMD-check.yaml)
[![webr-build-binary](https://github.com/WebRBookTemplate/webr-github-action-wasm-binaries/actions/workflows/deploy-cran-repo.yml/badge.svg)](https://github.com/WebRBookTemplate/webr-github-action-wasm-binaries/actions/workflows/deploy-cran-repo.yml)
<!-- badges: end -->

The goal of WebRBookTemplate is to …

This repository is adapted from this repo:
<https://github.com/coatless-tutorials/webr-github-action-wasm-binaries/tree/main>

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
