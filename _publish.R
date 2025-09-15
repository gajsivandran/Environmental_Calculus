# publish.R
bookdown::clean_book(TRUE)
bookdown::render_book("index.Rmd", "bookdown::gitbook")
if (!file.exists("docs/.nojekyll")) file.create("docs/.nojekyll")

# 2) Ensure we're at the project root (important on OneDrive paths)
if (!requireNamespace("here", quietly = TRUE)) install.packages("here")
setwd(here::here())

# 3) Use gert for Git ops (more reliable than system() on Windows)
if (!requireNamespace("gert", quietly = TRUE)) install.packages("gert")

# Optional: show status before adding
try(gert::git_status())

# 4) Stage, commit, push
gert::git_add(".")
gert::git_commit(paste0("Publish: rebuild book @ ", Sys.time()))

# If first push on this machine, set upstream automatically
gert::git_push(set_upstream = TRUE)
