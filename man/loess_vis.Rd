% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/loess_vis.R
\name{loess_vis}
\alias{loess_vis}
\title{Loess Visualization}
\usage{
loess_vis(
  formula,
  data,
  center = median(data[, all.vars(formula)[2], drop = TRUE]),
  degree = 2,
  span = 0.3,
  draw_loess = FALSE,
  show_loess = TRUE,
  xlab = all.vars(formula)[2],
  ylab = all.vars(formula)[1],
  ...
)
}
\arguments{
\item{formula}{formula for regression.}

\item{data}{data.frame.}

\item{center}{where along the x-axis should the local regression be estimated.}

\item{degree}{the degree of the polynomials to be used, normally 1 or 2.}

\item{span}{the parameter alpha which controls the degree of smoothing.}

\item{draw_loess}{whether to draw the Loess regression up to the center.}

\item{show_loess}{whether to draw the entire Less regression line.}

\item{xlab}{label for the x-axis.}

\item{ylab}{label for the y-axis.}

\item{...}{currenlty not used.}
}
\description{
Loess Visualization
}
\examples{
data("faithful", package = "datasets")
loess_vis(formula = eruptions ~ waiting, data = faithful)
}
