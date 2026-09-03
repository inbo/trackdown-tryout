# install trackdown from github:
# current CRAN version is 1.1.1,
# but higher version (>=1.3.1) required for Quarto files
# see https://github.com/ClaudioZandonella/trackdown/blob/main/README.md
remotes::install_github("claudiozandonella/trackdown", build_vignettes = TRUE)

# authorize access to g-drive:
# https://claudiozandonella.github.io/trackdown/articles/oauth-client-configuration.html

# as part of the authorization process:
# configure trackdown in R (one possibility)
my_client <- gargle::gargle_oauth_client(
  name = "client_name_here",
  id = "client_id_here",
  secret = "client_secret_here"
)
trackdown::trackdown_auth_configure(client = my_client)
