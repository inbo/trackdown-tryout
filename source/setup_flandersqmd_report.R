# install stable version of flandersqmd
install.packages(
  "flandersqmd",
  repos = c("https://inbo.r-universe.dev", "https://cloud.r-project.org")
)

# create a report skeleton
flandersqmd::create_report(path = "source", reportname = "report_example")
