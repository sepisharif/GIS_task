# The required packages
install.packages("geosphere")             
install.packages("mapview")
install.packages('dplyr')
library(geosphere)
library(mapview)
library(sf)
library (dplyr)

# The example of GIS data (North Carolina, NC) which includes the longitude and latitude on the map
starbucksNC <-read.csv("https://raw.githubusercontent.com/libjohn/mapping-with-R/master/data/All_Starbucks_Locations_in_the_US_-_Map.csv")
mapview(starbucksNC, xcol = "Longitude", ycol = "Latitude", crs = 4269, grid = FALSE)


# Note Latitude designates North and South of the Equator. Longitude designates East and West of the Prime Meridian.
# Note A negative latitude means South of the Equator, and a negative longitude means West of the Prime Meridian.

# Christchurch & Dunedin longitude and Latitude
my_points <- matrix(c( 172.54028,  170.41992,
                       -43.54457,-45.88818)
                    ,nrow = 2)
colnames(my_points) <- c("Longitude","Latitude")

########################################################################################
# Calculate Haversine distance
my_dist1 <- distHaversine(my_points, r=6378137)          
my_dist1 # it is m therefore it should divide by 1000 to change to km 
Chch_Dunedin1=my_dist1/1000
Chch_Dunedin1
#######################################################################################
# Calculate Vincenty ellipsoid distance
my_dist2 <- distVincentyEllipsoid(my_points, a=	6378137, b=6356752.3142, f=1/298.257223563)    
my_dist2   # it is m therefore it should divide by 1000 to change to km
Chch_Dunedin2=my_dist2/1000
Chch_Dunedin2
#######################################################################################
# Calculate the geodesic WGS84
my_dist3 <- distGeo(c(172.54028,-43.54457 ), c(170.41992, -45.88818), a=6378137, f=1/298.257223563)    
my_dist3  # it is m therefore it should divide by 1000 to change to km
Chch_Dunedin3=my_dist3/1000
Chch_Dunedin3
##############
