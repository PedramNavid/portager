library(rmarkdown)
library(rprojroot)
PROJ_ROOT <- find_root(has_file("README.md"))

render_files = c("Introduction_to_R/Introduction_to_R.Rmd",
  "Installing_R/Installing_R.Rmd",
  "Installing_R_Packages/Installing_R_Packages.Rmd",
  "Starting_A_Project/Starting_A_Project.Rmd",
  "Visualizing_Data/Visualizing_Data.Rmd",
  "Communicating_Data/Communicating_Data.Rmd",
  "Transforming_Data/Transforming_Data.Rmd",
  "Importing_Data/Importing_Data.Rmd")

my_render <- function(code, ...) {
  code <- file.path(PROJ_ROOT, code)
  out <- file.path(PROJ_ROOT, "outputs")
  render(code, output_format = 'all',
    output_dir = out,
    clean = F)
}

mapply(my_render, render_files)

