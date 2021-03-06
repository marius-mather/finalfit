% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/metrics_hoslem.R
\name{metrics_hoslem}
\alias{metrics_hoslem}
\title{Hosmer-Lemeshow goodness of fit test}
\source{
https://github.com/psolymos/ResourceSelection/blob/master/R/hoslem.test.R
}
\usage{
metrics_hoslem(y, yhat, g = 10, digits = c(2, 3))
}
\arguments{
\item{y}{Observed y, usually of the form \code{fit$y}.}

\item{yhat}{Predicted y_hat, usually for the form \code{fit$fitted}}

\item{g}{Number of bins to calculate quantiles.}

\item{digits}{Number of decimal places of form \code{c(2,3)}, where \code{digits[1]} is
for chi-sq estimate and \code{digits[2]} is for p-value.}
}
\value{
Character string of chi-sq result, df, and p-value. Significant
  p-value suggests poor fit.
}
\description{
Internal, not usually called directly
}
\examples{
fit = glm(mort_5yr~age.factor+extent.factor, data=colon_s, family="binomial")
metrics_hoslem(fit$y, fit$fitted)
}
\author{
Adapted from Peter Solymos.
}
