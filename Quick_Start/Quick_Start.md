A Short Hike with R
========================================================
author: Pedram Roshdinavid
date: August 8 2016
autosize: true

In the beginning there was S..
========================================================

![StringsAsFactors Monster](img/loch_ness_factor.jpg)

***

R is a programming language built by statisticians for statisticians, 
based on another programming language called S. R is the free, open-source 
successor to S, and is not without its quirks.

Many of these have been overcome through clever packages
that hide a layer of complexity. Sometimes, that ugly layer
surfaces through though, so be aware. 

And then there was R..
========================================================

R's quirks come from an empahsis on data analysis & data science, and
the unique methods and processes data analysts go through. Despite quirks,
there a number of benefits! 

* Interactive: unlike SAS, you can try bits and pieces of code fragments.
* Documented: unlike Excel, R code (especially RMarkdown) lend itself to 
documenting your work, which is great for self- and peer-review
* Iterative: Also unlike Excel, when 'someone' wants to see a histogram with 4 
bins instead of 3, it's a simple change.
* Repeatable: You can give your project to someone else, and they can run the
analysis and get the same result. 

Most importantly...
========================================================
* Fun: You might find yourself actually enjoying yourself once you see how
easy it is to build visualizations and models
* Powerful: You can plot twenty distributions and scatter plots in the time
it takes you to write a couple vlookups. You're no longer limiting your analysis
because of the tool you use.
* Cutting-edge: Constantly being updated. You can create simple slides that 
execute code (like this one) or build web apps (Shiny).

*** 

![plot of chunk unnamed-chunk-1](Quick_Start-figure/unnamed-chunk-1-1.png)

Ok that's nice but I have Excel..
========================================================
Apart from the important theoretical things like reproducibility and reducing
error, try this in Excel.

![Histogram in Excel](img/excel_histogram.png)

*** 

1. I give you a dataset
2. Create statistical summaries, histograms, and a model.
3. I change the dataset.

Sold yet?

RStudio - Interactive Development
========================================================

R is the programming language
RStudio is the programmer's interface
RStudio makes it easier to code using R, and it brings with it
a wealth of cool features. 

No slide can explain it all, so let's fire up RStudio and walk through it
*** 
![RStudio GUI](img/rstudio-windows.png)

Did I Do This Right?
========================================================
Things to cover:

* setup package for proxy
* install libraries
* load library
* interactive environment

***

* create a project
* source 
* get help
* cheat sheets
