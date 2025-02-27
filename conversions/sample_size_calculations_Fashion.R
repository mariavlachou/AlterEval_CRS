library(effectsize)
library(pwr)

## we use the correlation values obrained in our 2022 paper
## convert spearman's rho to effect size for Shoes
r_to_d(-0.423, 4658, 4658)

## convert spearman's rho to effect size for Dresses
r_to_d(-0.281, 2454, 2454)

## calculate required sample size size for Shoes
pwr.r.test(r = -0.423 , sig.level = 0.05 , power = 0.90 )

## calculate required sample size size for Dresses
pwr.r.test(r = -0.281 , sig.level = 0.05 , power = 0.90 )

## calculate required sample size size for Shirts, test: not needed for the study
#pwr.r.test(r = -0.336 , sig.level = 0.05 , power = 0.90 )