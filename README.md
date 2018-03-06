
[![Travis-CI Build Status](https://travis-ci.org/reconhub/outbreaker2.svg?branch=master)](https://travis-ci.org/reconhub/outbreaker2)
[![Appveyor build status](https://ci.appveyor.com/api/projects/status/yj449x0yqhphvcrt/branch/master?svg=true)](https://ci.appveyor.com/project/thibautjombart/outbreaker2/branch/master)
[![Coverage Status](https://codecov.io/github/reconhub/outbreaker2/coverage.svg?branch=master)](https://codecov.io/github/reconhub/outbreaker2?branch=master)


*outbreaker2: a framework for reconstructing disease outbreaks*
---------------------------------------------------------------

Welcome to the project page of *outbreaker2*, a Bayesian framework
 for integrating epidemiological and genetic data to reconstruct transmission
 trees of densely sampled outbreaks. It re-implements, generalises and replaces
 the model of [*outbreaker*](https://github.com/thibautjombart/outbreaker), and uses
 a modular approach which enables fine customisation of priors, likelihoods
 and parameter movements (see [customisation
 vignette](http://www.repidemicsconsortium.org/outbreaker2/articles/customisation.html)).


<br>

Installation
-------------

To install the stable version from CRAN:

```r
install.packages("outbreaker2")
```

To install the development version from github (requires Rtools on windows and
GSL headers on all platforms):


```r
devtools::install_github("reconhub/outbreaker2")
```

To add local copies of the vignettes, you will need to specify:

```r
devtools::install_github("reconhub/outbreaker2", build_vignettes = TRUE)
```

Then, to load the package, use:


```r
library("outbreaker2")
```



<br>

Documentation
-------------

*outbreaker2* is fully documented on a [dedicated
 website](http://www.repidemicsconsortium.org/outbreaker2/).

It also comes with the following vignettes:

- **`introduction`**: general introduction using a worked example.
- **`overview`**: brief overview of the package's content.
- **`customisation`**: customisation of priors, likelihoods, and movement functions.
- **`Rcpp_API`**: documentation for the Rcpp API.



<br>

Contributors
------------
- [Thibaut Jombart](https://github.com/thibautjombart)
- [Finlay Campbell](https://github.com/finlaycampbell)
- [Rich Fitzjohn](https://github.com/richfitz)


See details of contributions
[here](https://github.com/reconhub/outbreaker2/graphs/contributors).

Contributions are welcome via **pull requests**.

Please note that this project is released with a [Contributor Code of
Conduct](https://github.com/reconhub/outbreaker2/blob/master/CONDUCT.md). By
participating in this project you agree to abide by its terms.

**Maintainer:** Finlay Campbell (f.campbell15@imperial.ac.uk)
