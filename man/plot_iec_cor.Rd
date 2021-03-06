% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/plot_functions.R
\name{plot_iec_cor}
\alias{plot_iec_cor}
\title{Plot estimated IEC vs. environmental gradient}
\usage{
plot_iec_cor(iec, env_grad, main = NULL, xlab = "Original Gradient",
  time = TRUE)
}
\arguments{
\item{iec}{the output data frame from \code{\link{est_iec}}.}

\item{env_grad}{numeric vector of environmental gradient scores, one for each
site.}

\item{main}{an overall title for the plot (e.g., "Fish 2015 (total ag)").}

\item{xlab}{name of original gradient for the x axis (default is "Original
Gradient")}

\item{time}{logical indicating if time of plotting should be printed below
the main title.}
}
\description{
\code{plot_iec_cor} plots the IEC scores estimated by \code{\link{est_iec}}
(y-axis) against the environmental gradient (x-axis).  Generally this is used
with the original environmental gradient in its unscaled format (i.e., before
using \code{\link{scale10}}). Note that this function is only applicable when
applying \code{\link{est_iec}} to the same sites used to generate the taxa
specific Biotic Response Curves (\code{\link{est_brc}}).
}
\examples{
data(list = c("fish_sp", "fish_grad"))
grad <- scale10(fish_grad, TRUE)
brc <- est_brc(fish_sp, grad)
iec <- est_iec(fish_sp, brc, n_reps = 10)
plot_iec_cor(iec, fish_grad, "fish")
}

