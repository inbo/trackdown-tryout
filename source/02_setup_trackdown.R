# install trackdown from github:
# current CRAN version is 1.1.1,
# but higher version (>=1.3.1) required for Quarto files
# see https://github.com/ClaudioZandonella/trackdown/blob/main/README.md
remotes::install_github("claudiozandonella/trackdown", build_vignettes = TRUE)

# authorize access to g-drive:
# https://claudiozandonella.github.io/trackdown/articles/oauth-client-configuration.html
