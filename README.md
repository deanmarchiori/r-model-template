
<!-- README.md is generated from README.Rmd. Please edit that file -->

# r-model-template

<!-- badges: start -->

[![R-CMD-check](https://github.com/deanmarchiori/r-model-template/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/deanmarchiori/r-model-template/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of this repository is to act as a template demonstrating a full
end to end MLOps style R project.

The toy example is training a predictive model on a `csv` dataset that
predicts water temperature throughout the year for Sydney beaches. This
project addresses how you might want to structure this project to run in
a ‘Production’ context.

I go into more details in my workshop [Data Science Workflows in R An
introduction to deploying production quality R
code](https://datasciworkflows.netlify.app/).

This includes:

- Data import and cleaning with the `{tidyverse}`
- Data documentation  
- Documented R functions for processing and model training using
  `{roxygen2}`
- R package structure  
- Model training and inference pipeline using `{quarto}`
- Unit tests with `{testthat}`  
- Monitoring dashboard in interactive rmarkdown and `{flexdashboard}`
- Model card for documenting model ethics, decision and recommended use
  cases  
- Prediction API endpoint creation using `{plumber}`
- Model versioning and metadata storage using `{vetiver}` and `{pins}`  
- Fully containerized deployment using Docker
- Dependency managment using `{renv}`
- Project website and documentation using `{pkgdown}`  
- Continuous Integration (CI) pipeline automated using Github Actions

## Installation

You can install the development version of beachwatch from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("deanmarchiori/r-model-template")
```

Then run `devtools::install()`

The model pipeline can be stepped through in `model_notebook.qmd`

## Example

This is a basic example of using the deployed outputs from this project.

1.  Clone the repository:
    `git clone https://github.com/deanmarchiori/r-model-template.git`

2.  To build your docker image: `docker build -t beach .`

3.  To run it: `docker run -p 8080:8080 beach`

The endpoint should now be live at <http://127.0.0.1:8080>

## Deployment

To deploy this in a production context, the project can be easily
extended to add a Continuous Deployment (CD) workflow in Github Action
to build and push the Docker container to your preferred container hub,
which can then be accessed and run by your production systems.
