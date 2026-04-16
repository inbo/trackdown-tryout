# folder structure -----------------------------------------------------------

# create folders
dirs <- c(
  "data",
  "media",
  "output"
)
sapply(dirs, dir.create)


# renv --------------------------------------------------------------------

# initialize renv
renv::init(bare = TRUE)

# write renv lockfile
renv::snapshot()

# update packages
renv::update()
