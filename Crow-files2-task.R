
remotes::install_github("rstudio/htmltools")
library(sf)
library(mapview)

starbucksNC <- read.csv("https://raw.githubusercontent.com/libjohn/mapping-with-R/master/data/All_Starbucks_Locations_in_the_US_-_Map.csv")

mapview(starbucksNC, xcol = "Longitude", ycol = "Latitude", crs = 4269, grid = FALSE)

