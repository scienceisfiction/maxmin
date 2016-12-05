\*\* This is a practice package, not really meant to be all that useful.

### MaxMin

There are just 2 functions, one slightly more advanced than the other. Both find the difference between quantiles, one can only take the difference between max() and min() while the other can find the difference between any quantile of your choosing.

### Installation

``` r
devtools::install_github("scienceisfiction/maxmin")
```

### Demos

Finding the difference between max and min:

``` r
library(gapminder)
library(maxmin)
max_min_min(gapminder$lifeExp)
#> [1] 59.004
max_min_min(iris$Sepal.Length)
#> [1] 3.6
```

To find the difference between any quantile of your chooseing:

``` r
qdiff(gapminder$lifeExp)
#> [1] 59.004
qdiff(gapminder$lifeExp, c(0, 1))
#> [1] 59.004
qdiff(gapminder$lifeExp, c(0.25, 0.75))
#> [1] 22.6475
```

To specify one of 9 different algorithms that generate the quantiles, which will give you slightly different answers:

``` r
set.seed(1234)
z <- rnorm(10)
qdiff(z, probs = c(0.25, 0.75), type = 1)
#> [1] 1.319163
qdiff(z, probs = c(0.25, 0.75), type = 4)
#> [1] 1.401829
```
