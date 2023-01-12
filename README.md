## GIS_task
### Introduction
Calculating the shortest distance between two points (i.e., the 'great-circle-distance' or 'as the crow flies') for geodesic distances is unquestionably a common occurrence.

### Objective
The objective of this task is to utilise a few R-documented functions and do a "back of the envelope" comparison of their performance, i.e. to determine whether or not their results differ.

### Methods
*  The initial section of code utilises the 'mapview' package to generate interactive maps (in this example, georeferenced locations of Starbucks coffee shops in North Carolina). 

*  The second stage is to extract the coordinates (Longitude and Latitude as input) of the two New Zealand cities (Dunedin and Christchurch) from the map and compare the accuracy of the crow files generated by multiple R functions.

*  The ‘geosphere’ package in R provides a collection of functions for computing distance, bearing, and other parameters between geographical coordinates. Some of the most regularly used functions in the package are used in this task including ‘distHaversine()’, ‘distVincentyEllipsoid ()’, and ‘distGeo ()’.

### Conclusion

*  The 'distHaversine()' function is based on the Haversine formula, which assumes a spherical earth. Due to the fact that Earth is not perfectly spherical, the output is not more precise.

*  The 'distVincentyEllipsoid ()' function is derived from the formula Vincenty which assumes a Vincenty ellipsoid. Consequently, it is highly exact, but computationally intensive. This function is altered to 'distVincentySphere ()' with less precision when the ellipsoid is ignored; nevertheless, it is not included in the code just mentioned.

*  The 'distGeo ()' function is highly precise estimation of the shortest distance between two places on a WGS84 ellipsoid (a standard used in cartography, geodesy, and satellite navigation including GPS).Therefore it is highly recommended and common method.

*  Although the accuracy discrepancy in this simple example is not significant, the distances of the coordinates could be used to determine which approach to employ. For sites that are close together, the computationally easier spherical Earth methods will suffice. However, for points that are far away, the somewhat more complex ellipsoid approaches will produce a superior result. 
