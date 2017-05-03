# metScanR

[![](http://cranlogs.r-pkg.org/badges/metScanR)](https://cran.rstudio.com/web/packages/metScanR/index.html) 
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/metScanR)](http://cran.r-project.org/package=metScanR)

## Summary 

metScanR is an R package that enables users to quickly locate and work with freely available meteorological (MET) data across multiple networks. This package can currently find data across **13,368** stations among **11** different networks simultaneously (US only). The wide range of networks and their associated, but varying documentation, meta-data, data formats, and even station identifiers can pose a major roadblock to finding, wrangling, and synthesizing MET data. 

metScanR currently allows for a user to 'bypass' many steps involved in finding MET data. A user can: 

* specify a location, 
* search distance range
* sampling date ranges
* MET network (COOP, USCRN, USRCRN, ASOS, AWOS, SNOTEL, SCAN, NEON)
* meteorological variables 

metScanR will return an R data.frame listing of all weather stations that meet the criteria.  

metScanR also empowers users to explore data by providing an interactive map of all returned MET stations (powered by Leaflet). 

## Future Directions

In the near future, metScanR will provide functionality for  directly downloading MET data via existing APIs. 

## Installation

* Install official releases from CRAN with 

```
install.packages("metScanR")
```

* Install the latest developmental version from Github via

```
if (packageVersion("devtools") < 1.6) {
  install.packages("devtools")
}
devtools::install_github("jaroberti/metScanR")
```

If you encounter a bug, please provide a reproducible example on this package's [github issues](https://github.com/cflagg/metScanR/issues) page. 

# Getting Started

This brief tutorial is intended for users that are both familiar and unfamiliar with R. The R code higlighted below can be copy-pasted and executed inside an R script. 

A general workflow for locating meteorological data is outlined below.

There are currently two functions: 

* `siteFinder`: searches for MET stations, returns a _siteFinder_ object
* `mapSiteFinder`: takes a _siteFinder_ object as an input, returns an interactive Leaflet map of all stations in the _siteFinder_ object

In this example we'll do the following:

* Locate meteorological data of interest
* Examine the station meta-data in RStudio
* Interactively view the data with Leaflet
* Export the meta-data to a .CSV file

## 

## Find MET Data

### Scenario 1: locate data via latitude and longitude

Find station meta-data near a given coordinate, assign the output to object `scenario1`:

```
library(metScanR)
scenario1 <- siteFinder(Lat=40.05,Lon=-105.27,startDate="2000-01-05",radius=45) # returns 40 stations
```

We can also specify more narrowly the type of data we want returned, for example only COOP stations that have air temperature: 

```
scenario1 <- siteFinder(Lat=40.05,Lon=-105.27,startDate="2000-01-05",radius=45,network="COOP",vars="AIR_TEMP") # returns 21 stations
```

### Scenario 2: locate meta-data near National Ecological Observatory Network (NEON) sites

metScanR functions were originally designed to return meteorological data near NEON sites to assist with observatory commissioning. A four-letter NEON site code can be passed to siteFinder instead e.g.: 

```
scenario2 <- siteFinder(NEON.site="HARV",startDate="2000-01-05",radius=45,vars="AIR_TEMP") # returns 18 stations from 4 networks
```

The siteFinder function returns a list object with two elements: 

* `LAT.LON`: the latitude and longitude specified 
* `finalResults`: a data.frame containing the station meta-data

## View raw station meta-data

Users may want to examine the date ranges or weather variables associated with a station (recall that this information is in the `finalResults` element of the siteFinder object) The following function will neatly display the data in a tabular format if executed in the RStudio IDE: 

```
View(scenario1$finalResult)
```

## Explore a map of returned station meta-data

The raw station meta-data can be viewed interactively by calling the `mapSiteFinder` function on a siteFinder object in RStudio e.g.: 

```
mapSiteFinder(scenario2)
```

Users can pan, zoom, and click on stations to better visualize the spatial arrangement of stations and/or networks.  


## Write station meta-data to an external file

Since metScanR only returns station meta-data at the moment (functionality for downloading station data directly will be implemented in the future), users may want a 'hard copy' .csv of station identifiers to plug into various APIs or websites supported by MET networks: 

```
write.csv(x = scenario2$finalResults, file = "path/to/your/folder/metScanR_output.csv", na="")
```

You must specify a local file path for the output via the `file` argument. 
