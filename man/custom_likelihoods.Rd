% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/custom_likelihoods.R
\name{custom_likelihoods}
\alias{custom_likelihoods}
\alias{print.custom_likelihoods}
\title{Customise likelihood functions for outbreaker}
\usage{
custom_likelihoods(...)

\method{print}{custom_likelihoods}(x, ...)
}
\arguments{
\item{...}{a named list of functions, each computing a log-likelihood component.}

\item{x}{an \code{outbreaker_config} object as returned by \code{create_config}.}
}
\value{
A named list of list(function, arity) pairs with the class
    \code{custom_likelihood}, each function implementing a customised
    log-likelihood component of outbreaker. Functions which are not
    customised will result in a list(NULL, 0) component. Any function with
    arity 3 must have the third parameter default to NULL.

a list of named functions
}
\description{
This function is used to specify customised likelihood functions for
outbreaker. Custom functions are specified as a named list or series of
comma-separated, named arguments, indicating which log-likelihood component
they compute. Values currently available are:
}
\details{
\itemize{

\item \code{genetic}: the genetic likelihood; by default, the function
\code{cpp_ll_genetic} is used.

\item \code{timing_sampling}: the likelihood of sampling times; by default, the function
\code{cpp_ll_timing_sampling} is used.

\item \code{timing_infections}: the likelihood of infection times; by default, the function
\code{cpp_ll_timing_infections} is used.

\item \code{reporting}: the likelihood of the reporting process; by default,
the function \code{cpp_ll_reporting} is used.

\item \code{contact}: the likelihood of the contact tracing data; by default,
the function \code{cpp_ll_contact} is used.
}

All log-likelihood functions should have the following arguments, in this
order:

\itemize{

\item \code{data}: a list of named items containing input data as returned by
\code{\link{outbreaker_data}}

\item \code{param}: a list of parameters with the class
\code{\link{create_param}}

}
}
\examples{

## specify a null model by disabling all likelihood components
f_null <- function(data, param) {
  return(0.0)
}

null_model <- custom_likelihoods(genetic = f_null,
                                timing_sampling = f_null,
                                timing_infections = f_null,
                                reporting = f_null,
                                contact = f_null)

null_config <- list(find_import = FALSE,
                    n_iter = 100,
                    sample_every = 1)

## load data
x <- fake_outbreak
data <- outbreaker_data(dates = x$sample, dna = x$dna, w_dens = x$w)

res_null <- outbreaker(data = data,
                       config = null_config,
                       likelihoods = null_model)

## visualise ancestries to see if all transmission trees have been explored
plot(res_null, type = "alpha")
}
\seealso{
See \href{http://www.repidemicsconsortium.org/outbreaker2/articles/customisation.html#customizing-likelihood}{customization vignette} for detailed examples on how to customize likelihoods.
}
\author{
Thibaut Jombart (\email{thibautjombart@gmail.com})
}
