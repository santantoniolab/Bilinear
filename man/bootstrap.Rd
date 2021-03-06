% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bootstrap.R
\name{bootstrap}
\alias{bootstrap}
\title{bootstrap function}
\usage{
bootstrap(K, D, Dtilde, Edecomp, M, B, model, bootMethod = "full",
  Theta_k = NULL, verbose = FALSE, ...)
}
\arguments{
\item{K}{integer, kth eigenvalue}

\item{D}{integer, Maximum right dimensions}

\item{Dtilde}{integer. Maximum right dimensions}

\item{Edecomp}{svd() object from singular value decomposition of the table of residuals (thetaPlusR)}

\item{M}{integer. maximum number of PCs.}

\item{B}{integer. Number of bootstraps to be performed.}

\item{model}{bilinear model to be fit. Arguments can be "AMMI", "GGE", "SREG", "EGE", "GREG". "GGE" and "SREG" are equivalent, as are "EGE" and "GREG".}

\item{bootMethod}{character. Method for bootstrap sampling. Can be "full" or "simple", default is "full".}

\item{Theta_k}{Theta the reduced dimension table can be provided directly. useful for ??}

\item{verbose}{logical. Should details be printed?}

\item{...}{Additional arguments.}
}
\value{
p-values for 1 to K principal components
}
\description{
This function perfoms a bootstrap test on one PC at a time inside bilinear(), for ease of parallelization. Not meant to be used by user.
}
\details{
Performs bootstrap test of significance by returning the proportion of time the bootstrap test statistic exceeds the 
statistic calculated from the Kth principal component. See Forkman and Piepho (2014) Biometrics, 70(3) for specifics.
}
\keyword{bootstrap}
\keyword{parametric}
