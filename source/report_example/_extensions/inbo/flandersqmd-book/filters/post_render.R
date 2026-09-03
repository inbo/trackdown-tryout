tmp <- getwd()
setwd(file.path("source", "report_example"))
flandersqmd::post_render()
setwd(tmp)
