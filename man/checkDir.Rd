% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{checkDir}
\alias{checkDir}
\title{Check and Adjust Working Directory Based on Configuration}
\usage{
checkDir()
}
\value{
None; function is used for its side effects (changing directories or stopping execution).
}
\description{
Verifies the presence of required temp files in the current directory and ensures
the output directory matches the expected configuration. Adjusts the working
directory if necessary, based on the configuration.
}
