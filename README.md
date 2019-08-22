# genodds

[logo]: https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "genodds"

genodds calculates Agresti's generalized odds ratios for a two-sample dataset. This measure calculates the odds that, were a pair of observation were to be randomly selected from two groups, the observation in one group would have a higher score than those in the other group. This measure tests the hypothesis that this odds ratio is different than 1 (no difference between groups). This measure can also be reported as Number Needed to Treat, a common outcome measure used in health economics.

## Installation

You can install the released version of genodds from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("genodds")
```

## Example

genodds can be run as follows:

``` r
library(genodds)
df <- alteplase
genodds(df$mRS,df$treat,df$time)
```

