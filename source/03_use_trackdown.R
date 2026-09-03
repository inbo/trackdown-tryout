# based on suggested workflow outlined in readme.txt on gdrive:
# https://drive.google.com/file/d/1vQbgKEDwqljkTj2jYPgOMAkv0Vrd8ql5/view?usp=sharing

# Define local file paths -------------------------------------------------

# root of report source files
local_root <- file.path("source", "report_example")

# report source files (assuming all are .qmd)
local_source_files <- list.files(
  path = local_root,
  pattern = ".qmd",
  full.names = TRUE
)

# report rendered file
local_rendered_file <- file.path(
  "output",
  "report_example",
  "report_example.pdf"
)


# Define gdrive paths -----------------------------------------------------

# root
gdrive_root <- file.path(
  "interessante_packages_ebooks_courses",
  "trackdown_tryout"
)

# upload path for source files
gdrive_upload <- file.path(gdrive_root, "v1_1_report_suggestions")

# upload path for rendered files
gdrive_upload_rendered <- file.path(gdrive_root, "v1_0_report_suggestions")

# download path of revised source files
gdrive_download <- file.path(gdrive_root, "v1_4_report_revision_accepted")


# Upload content to g-drive -----------------------------------------------

# selected chapter
trackdown::upload_file(
  file = file.path(local_root, "introduction.qmd"),
  gpath = gdrive_upload,
  shared_drive = "Team_BMK_kennisuitwisseling",
  hide_code = TRUE,
  open = FALSE
)

# all chapters
purrr::map(
  .x = local_source_files,
  .f = \(x) {
    try(
      trackdown::upload_file(
        file = x,
        gpath = gdrive_upload,
        shared_drive = "Team_BMK_kennisuitwisseling",
        hide_code = TRUE,
        open = FALSE
      )
    )
  }
)


# Upload rendered report --------------------------------------------------

try(
  googledrive::drive_upload(
    media = local_rendered_file,
    path = googledrive::as_id(
      "https://drive.google.com/drive/folders/1jgbgbPMkoIMn8y1ZZ32LLyScjo_KJaoc"
    )
  )
)


# Download content from g-drive -------------------------------------------

# selected chapter
trackdown::download_file(
  file = file.path(local_root, "introduction.qmd"),
  gpath = gdrive_download,
  shared_drive = "Team_BMK_kennisuitwisseling"
)

# all chapters
purrr::map(
  .x = local_source_files,
  .f = \(x) {
    try(
      trackdown::download_file(
        file = x,
        gpath = gdrive_download,
        shared_drive = "Team_BMK_kennisuitwisseling"
      )
    )
  }
)
