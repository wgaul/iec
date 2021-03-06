% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/plot_functions.R
\name{plot_lof}
\alias{plot_lof}
\title{Plot BRC lack-of-fit (LOF).}
\usage{
plot_lof(brc, min_lof = 1)
}
\arguments{
\item{brc}{BRC data frame generated by \code{\link{est_brc}}.}

\item{min_lof}{numeric value indicating minimum LOF to label.}
}
\description{
\code{plot_lof} plots the LOF of for each taxon in a BRC data frame.
}
\details{
The LOF for each taxon in a BRC data frame (generated by
\code{\link{est_brc}}) is plotted on a single frame by index.  This can be
helpful for spotting taxa with large LOF relative to other taxa.  This is
intended as a heuristic plot only.
}
\seealso{
\code{\link{est_brc}}
}

