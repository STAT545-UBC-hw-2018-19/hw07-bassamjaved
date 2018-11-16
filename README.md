
``` r
library(tidyverse)
#> ── Attaching packages ──────────────────────────────────────────────────────────── tidyverse 1.2.1 ──
#> ✔ ggplot2 3.0.0     ✔ purrr   0.2.5
#> ✔ tibble  1.4.2     ✔ dplyr   0.7.6
#> ✔ tidyr   0.8.1     ✔ stringr 1.3.1
#> ✔ readr   1.1.1     ✔ forcats 0.3.0
#> ── Conflicts ─────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
```

# hw07package

This package was created as a submission for Homework 07 requirement for
STAT 547. It contains functions for performing a transformation of
statistical data by the Box-Cox method.

## Functions

This package contains one function that can be implemented by the user,
`boxcox`.

There are also two internal functions used by the above function, namely
`boxcox_positive` and `boxcox_negative`. If a vector argument is
positive, `boxcox` passes to the former; if negative, then to the
latter.

## Installation

This package is located at
<https://github.com/STAT545-UBC-students/hw07-bassamjaved>

To install package, you have two options:

1)  Download as .tgz file from the link above. In RStuio,
    Tools-\>Install Packages-\>Install From: Package Archive File.
2)  Download directly from GitHub.com. Use the following command:

<!-- end list -->

    install_github("bassamjaved/hw07package")

## Example

The primary function visible to the user is `boxcox`. Based on whether
the first argument passed to the function is positive or negative,
`boxcox` will use an appropriate internal function to calculate the
Box-Cox transformation according to a specified lambda parameter (and
lambda2 for a negative argument).

``` r
#positive argument; lambda = 2 
hw07package::boxcox(10,2)
#> [1] 49.5

#negative argument; lambda1 = 2, lambda2 = 3
hw07package::boxcox(-10, 2, 3)
#> [1] 24
```

For further elaboration with illustrative example, see package vignette.
