% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/forecast.R
\name{tt_ranges}
\alias{tt_ranges}
\title{Training and Testing data}
\usage{
tt_ranges(data, testing, n_tt, training = NULL)
}
\arguments{
\item{data}{a data frame which you want to create test and training indices for}

\item{testing}{the number of datapoints you want to reserve for testing for each testing, training pair}

\item{n_tt}{the number of testing and training sets you want to produce}

\item{training}{number of samples to use for training, default is NULL where all available samples (not assigned to testing) in section are used}
}
\value{
a list of testing and training sets, where each element is a list containing a test and train list with the testing and training row indices respectfully
}
\description{
Assigns ranges of row indices for multiple testing and training sets based on arguments given. Note that this simply partitions the datset so all the indices are sequential.
}
