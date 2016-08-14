Installing R and R STudio
========================================================
author: Pedram Navid
autosize: true

A Briefer
========================================================
* R: Comes first. Install from: https://cran.r-project.org/
* RStudio is next. Install from: https://www.rstudio.com/products/rstudio/download2/

Installation is straight-forward enough. Defaults are fine. For corporate
environments, you may want to make a few changes.

Organize your life
========================================================
Or at least your project folders. Here's how I do it:  

* Base folder for all my work: **Documents\R\workspace**
* In each folder, I create a subfolder for each project
* A project could be one analysis or many, but in general should share a
common goal, maybe common data.
* Within each project folder, separate code from raw data using additional
folders. More details in the **Starting A Project** slide.

Some Recommended Options
========================================================
![R Options Screenshot](img/r_options.png)

***

Change Options through Tools > Global Options.

* Restore .RData into workspace at startup: Unchecked 
* Save workspace to .RData on exit: Never (Drives good behaviour)
* Use Internet Explorer: checked
* Use Secure Download Method for HTTP: unchecked if behind a corporate firewall