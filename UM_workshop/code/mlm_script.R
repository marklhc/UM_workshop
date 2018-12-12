c(1, 2, 3)
2^10
pi
x <- c(4, 3, 5, 2, 1, 1, 1, 5, 5, 5)
x
mean(x, trim = .2)
?mean
median(x)
y <- rnorm(100, mean = 100, sd = 10)
?rnorm
?sd
y
?mean
hist(y)
?mean
sd(y)
# Install Packages --------------------------------------------------------

# This RStudio Cloud space already included the required packages for you to
# follow this workshop. However, if you're to run the analyses demonstrated in
# this workshop, you need the following packages:

# install.packages(c("lme4", "tidyverse", "psych", "texreg", "gridExtra"))

# For Bayesian analyses, you may also need to install `rstan`, which is a bit
# complicated and you'll need to follow the steps for your OS in
# https://github.com/stan-dev/rstan/wiki/RStan-Getting-Started. You'll then 
# need to install the `brms` package:

# install.packages("brms")


# Load the Data -----------------------------------------------------------

library(haven)
hsball <- read_sav("UM_workshop/data/hsball.sav")
View(hsball)

# Data Exploration --------------------------------------------------------

summary(hsball)
hist(hsball$mathach)
library(psych)
pairs.panels(hsball[c("mathach", "ses", "sector", "meanses")])

# (Unconditional) Random Intercept Model ----------------------------------

library(lme4)
# library(nlme)
m0 <- lmer(mathach ~ 1 + (1 | id), data = hsball)
summary(m0)
install.packages("lmerTest")
library(lmerTest)

confint(m0)
8.614 / (8.614 + 39.148)
# Deff: design effect (Lai & Kwok, 2015, use MLM when deff > 1.1)
1 + (7185 / 160 - 1) * 0.1803526


# Including a Lv-2 Predictor ----------------------------------------------

m1 <- lmer(mathach ~ 1 + meanses + (1 | id), data = hsball)
summary(m1)

# Contextual Effects ------------------------------------------------------

m2 <- update(m1, . ~ . + ses)
summary(m2)

# Random Slopes/Coefficients ----------------------------------------------


# Random slope

m3 <- lmer(mathach ~ meanses + ses + (1 + ses | id), data = hsball)
summary(m3)

# Cross-Level Interaction -------------------------------------------------

m4 <- lmer(mathach ~ meanses + sector * ses + (1 + ses | id), data = hsball)
m4b <- lmer(mathach ~ meanses + I(factor(sector)) * ses + (1 + ses | id), data = hsball)
install.packages("pbkrtest")
summary(m4, ddf = "Kenward-Roger")
summary(m4b)

# Test random slope

anova(m3, m2)

# Repeated measures
data(sleepstudy, package = "lme4")
library(lme4)
(fm1 <- lmer(Reaction ~ Days + (Days|Subject), sleepstudy))
summary(fm1)
