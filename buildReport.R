# build the report

# packages needed in this R script ----
library(dkUtils) # see https://github.com/dataknut/dkUtils
rLibs <- c("here")

dkUtils::loadLibraries(rLibs)

# functions ----
source(here::here("R", "functions.R"))

# > run report ----
rmdFile <- "cop26_FramMarket_report" # not the full path

version <- "v1.0"
# default = html
rmarkdown::render(input = paste0(here::here("rmd", rmdFile), ".Rmd"),
                  output_file = paste0(here::here("docs/"), rmdFile, "_",version,".html")
)