# UM_workshop

Date: December 11, 2018

Materials also on RStudio Cloud: [https://rstudio.cloud/project/154625](https://rstudio.cloud/project/154625)

## Session 1 (9:30 - 10:15)

### Introduction

- Tell us a little bit about yourself, and the data you're dealing with

### Very short intro to Multilevel Modeling (MLM)

Also called:

- Hierarchical linear model
- Mixed/Mixed-effects model
- Random coefficient model
- Variance component model

Multilevel data:

- clustered, dependent
- Examples:
    + Students in classrooms/schools
    + Siblings in families
    + Clients in therapy groups/therapists/clinics
    + Employees in organizations in countries
    + Repeated measures in individuals
    
What can MLM do?

- Give accurate _SE_ (i.e., avoid underestimated _SE_ and inflated Type I error)
- Study research questions at different levels
    - e.g., contextual effects
- Examine heterogenity across clusters
    - Cluster-specific (or person-specific) regression lines (or curves)

### Goals of the workshop

- To get hands on experience in running MLM

### Set up Rstudio Cloud

1. Go to [https://rstudio.cloud/](https://rstudio.cloud/), and register an 
account
2. Go to
[https://rstudio.cloud/project/155561](https://rstudio.cloud/project/155561),
and click "Save a Permanent Copy" on top right.

### Introduction to R and RStudio
- Typing in console
    + assign operator (`<-`)
    + create data (`c()`)
    + function and function arguments
        * `mean(x, trim = 0.1)`
        * `y <- rnorm(100, mean = 100, sd = 10)`
        * `hist(y)`
- Different panes

### Importing Data

## Session 2 (10:15 - 11:00)

### Data exploration
- Loading R packages
- Data distributions (`psych::describe()`)

### Random intercept model
- Run `lme4::lmer()`
- Obtain intraclass correlation
- Plot the shrinkage (aka empirical Bayes) estimates

### Adding a lv-2 predictor
- Interpret output

## Break (11:00 - 11:10)

## Session 3 (11:10 - 12:00)

### Model With a lv-1 predictor

### Contextual Effects

### Random Slope (Random Coefficient Model)
- Visualization

### Cross-Level Interactions
- Interpretations
- Plotting simple slopes [http://www.quantpsy.org/interact/hlm2.htm](http://www.quantpsy.org/interact/hlm2.htm)

### Model Diagnostics

## Session 4 (12:00 - 12:30)
- Q&A

### Bonus Topics
- R markdown
- Reporting
    + Ferron, J. M., Hogarty, K. Y., Dedrick, R. F., Hess, M. R., Niles, J. D., & Kromrey, J. D. (2008). Reporting results from multilevel analyses. In A. A. O’Connell, & D. B. McCoach (Eds.), Multilevel Modeling of Educational Data (pp. 391--426). Charlotte, NC: Information Age.
    + [Hox et al. (2018)](https://www.crcpress.com/Multilevel-Analysis-Techniques-and-Applications-Third-Edition/Hox-Moerbeek-Schoot/p/book/9781138121362) Appendix A
    + [Jackson (2010, Rehabilitation Psychology)](http://psycnet.apa.org/fulltext/2010-17262-008.html)
- Effect size ($R^2$ with the `MuMIn` package)
- Bayesian MLM

