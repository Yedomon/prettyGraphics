% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vis_ts.R
\name{vis_ts}
\alias{vis_ts}
\title{Visualise one dimensional timeseries via R Shiny}
\usage{
vis_ts(data)
}
\arguments{
\item{data}{A dataframe containing a response variable, timestamps (and, optionally) explanatory variables. Timestamps can be integer/numeric, \code{\link[base]{DateTimeClasses}} or a \code{\link[base]{Date}} objects.}
}
\value{
An interactive R Shiny application for visualising timeseries.
}
\description{
Interactive visualisation and exploration of one dimensional timeseries, based on \code{\link[prettyGraphics]{pretty_ts}}.
}
\examples{
\dontrun{
#### Example (1) Visualising POSIXct timeseries
# Here we have a simple dataframe... other columns (i.e. covariates) can be included
# ... alongside factor columns.
x <- seq.POSIXt(as.POSIXct("2016-01-01", tz = "UTC"),
                as.POSIXct("2016-01-10", tz = "UTC"), by = "2 hours")
                y1 <- rnorm(length(x), 200, 25) *-1
                y2 <- rnorm(length(x), lubridate::yday(x) * 0.5 +20, 0.5)
dat <- data.frame(x = x, y1 = y1, y2 = y2)
#### Launch shiny
vis_ts(data = dat)
}

\dontrun{
#### Example (2) Visualising numeric timeseries
x <- 1:1000
y <- rnorm(length(x), x*0.1- 500, 1000)
y2 <- rnorm(length(x), x*0.5, 500)
vis_ts(data = data.frame(x = x, y = y, y2 = y2))
}

}
\author{
Edward Lavender
}
