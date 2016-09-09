library(rmarkdown)

render_files = c("Introduction_to_R/Introduction_to_R.Rmd",
  "Installing_R/Installing_R.Rmd",
  "Installing_R_Packages/Installing_R_Packages.Rmd",
  "Starting_A_Project/Starting_A_Project.Rmd",
  "Visualizing_Data/Visualizing_Data.Rmd",
  "Communicating_Data/Communicating_Data.Rmd",
  "Transforming_Data/Transforming_Data.Rmd",
  "Importing_Data/Importing_Data.Rmd")

for (f in render_files) {
  render(f, output_format = 'all', envir = new.env())
}