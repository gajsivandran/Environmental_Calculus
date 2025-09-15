# publish.R
bookdown::clean_book(TRUE)
bookdown::render_book("index.Rmd", "bookdown::gitbook")
if (!file.exists("docs/.nojekyll")) file.create("docs/.nojekyll")

# auto-commit/push from R (optional)
system('git add -A')
system('git commit -m "Publish: rebuild book"')
system('git push')
