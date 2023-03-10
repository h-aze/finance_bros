% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/import_stonks.R
\name{import_stonks}
\alias{import_stonks}
\title{Import lagged stock data}
\usage{
import_stonks(
  stock_outcome = c("BTC-USD"),
  stock_pred = c("ETH-USD", "DOGE-USD"),
  day_lag = c(1, 2),
  from = as.Date("2018-01-02")
)
}
\arguments{
\item{stock_outcome}{Character. Outcome variable we will try to predict. Default: "BTC-USD"}

\item{stock_pred}{Character Vector. Stock prices we will use as predictors}

\item{day_lag}{Numeric Vector. The day lags of the predictors we want in dataset.}

\item{from}{Date. The start date we want data from the outcome variable.}
}
\value{
[`data.frame`] Containing outcome variable adjusted stock price and other Stocks selected as predictors with time lag selected by `day_lag` argument.
}
\description{
Given tickers for price data we want to predict and use as predictor variables returns dataframe where each ticker has a column and each row is labelled with the date, the prices are the adjusted day prices. Can also import data with different number of lags.
}
\examples{
\dontrun{
  head(import_stonks(stock_outcome = c("BTC-USD"), stock_pred =  c("ETH-USD", "DOGE-USD"), day_lag = c(1,2,3)))
}
}
