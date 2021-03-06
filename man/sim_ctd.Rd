% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sim_ctd.R
\name{sim_ctd}
\alias{sim_ctd}
\title{Simulate contact data from a transmission tree}
\usage{
sim_ctd(tTree, eps, lambda)
}
\arguments{
\item{tTree}{a dataframe or matrix of two columns, with each row providing
the ids (numerical or as characters) of a transmission pair}

\item{eps}{the contact reporting coverage, defined as the probability of
reporting a contact (transmission pair or not)}

\item{lambda}{the non-infectious contact rate, defined as the probability
of contact between a non-transmission pair.}
}
\description{
This function simulates contact data from a transmission tree. The
model assumes that all transmission pairs have experienced contact, and that
there is no false-positive reporting of contacts. The probability of contact
occuring between a non-transmision pair is given by the parameter lambda. The
probability of reporting a contact (transmission pair or not) is given by the
parameters eps.
}
\examples{

## load data
x <- fake_outbreak
tTree <- data.frame(from = x$ances, to = seq_along(x$ances))

## simulate contact data with coverage of 80\% and 10\% probability of
## contact between non-transmission pairs
ctd <- outbreaker2:::sim_ctd(tTree, eps = 0.8, lambda = 0.1)

## inspect contact data
head(ctd)
}
\author{
Finlay Campbell (\email{finlaycampbell93@gmail.com})
}
