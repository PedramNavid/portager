Installing R Packages
========================================================
author: Pedram Navid
date: 
autosize: true

What is a package?
========================================================
- New functions / features (e.g. tidyr, readxl)
- Simplify existing functions / syntax (dplyr, ggplot2, lubridate)
- Something you create! 
- Officially maintained list: https://cran.r-project.org/web/packages/

So....I install all of them?
========================================================
No! (Not yet)

- Start with a small set of recommended packages to become familiar with them
- Better to know a few really well then a lot only superficially


```r
pkg <- c('dplyr', 'tidyr', 'ggplot2', 'readxl', 'stringr', 'lubridate')
install.packages(pkg)
```

Load them!
========================================================
- Can't use a package until you load it! 
- Use library(pkgname) # No quotes! 


```r
library(dplyr)
library(ggplot2)
library(tidyr)
library(readxl)
```
