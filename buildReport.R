# build the report

# packages needed in this R script ----
library(dkUtils) # see https://github.com/dataknut/dkUtils
rLibs <- c("here")

dkUtils::loadLibraries(rLibs)

# functions ----
source(here::here("R", "functions.R"))

# > run report ----

rmdFile <- "cop26_FramMarket_report"
input <- paste0(here::here("rmd", rmdFile), ".Rmd")
od <- here::here("docs/")
version <- "_v2.0" 
rmarkdown::render(input = input,
                  output_file = paste0(rmdFile, version, ".html"),
                  output_dir = od
)
