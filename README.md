
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- badges: start -->
<!-- badges: end -->
The \`\`genodds'' package <img src="sticker.png" alt="genodds logo" style="float:right;height:232.25px" align="right" height="232.25">
======================================================================================================================================

Overview
--------

genodds implements Agresti's [generalized odds ratios](https://www.jstor.org/stable/2530495) for a two-sample dataset. This measure calculates the odds that, if a pair of observation were to be randomly selected from two groups, the observation in one group would have a higher score than those in the other group. The package also provides hypothesis testing for if this odds ratio is different to 1 (no difference between groups), as well as power/sample size estimation capabilities trial planning using this test. This measure can also be reported as [Number Needed to Treat](https://doi.org/10.1111/ijs.12364), a common outcome measure used in health economics.

Installation
------------

You can install the released version of genodds from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("genodds")
```

Example
-------

genodds can be run as follows:

``` r
library(genodds)
df <- alteplase
genodds(df$mRS,df$treat,df$time)
#>   Agresti's Generalised odds ratios
#> 
#>   0-90         Odds: 0.772 (0.599, 0.996)      p=0.0468
#>   91-180       Odds: 0.850 (0.709, 1.020)      p=0.0805
#>   181-270      Odds: 0.862 (0.771, 0.963)      p=0.0088
#>   271-360      Odds: 1.019 (0.891, 1.164)      p=0.7868
#> 
#> Test of H0: odds ratios are equal among strata:
#>   X-squared = 5.63, df= 3     p=0.1311
#> 
#> Test of H0: pooled odds = 1:
#>   Pooled odds: 0.897 (0.833,0.966)  p=0.0039
```
