# useful functions
# to use these in a .Rmd file put this in the setup chunk:
# source(here::here("R", "functions.R"))
# you may need to install the here package first

makeFlexTable <- function(df, cap = "caption"){
  # makes a pretty flextable - see https://cran.r-project.org/web/packages/flextable/index.html
  ft <- flextable::flextable(df)
  ft <- flextable::colformat_double(ft, digits = 1)
  ft <- flextable::fontsize(ft, size = 9)
  ft <- flextable::fontsize(ft, size = 10, part = "header")
  ft <- flextable::set_caption(ft, caption = cap)
  return(flextable::autofit(ft))
}