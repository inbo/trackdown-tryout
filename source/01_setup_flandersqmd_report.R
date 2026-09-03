# install stable version of flandersqmd
install.packages(
  "flandersqmd",
  repos = c("https://inbo.r-universe.dev", "https://cloud.r-project.org")
)

# create a report skeleton
flandersqmd::create_report(path = "source", reportname = "report_example")

# update report skeleton, at least:
# convert report files to .qmd and update the __quarto.yml file accordingly
