# metScanR: An R Package for Gathering Meteorological Data from Various Networks

![metScanR mapSiteFinder function in action -- using Leaflet to visualize MET station data](https://cflagg.github.io/metScanR/intro_img1.png)

## Tutorials

[Introductory metScanR Tutorial](https://cflagg.github.io/metScanR/tutorials/intro.html)

## Description

TL;DR: Here, we introduce the metScanR package for the R Programming language. This easy to use package will enable individuals to search for meteorological data near a region of interest across numerous networks, based on key parameters such as variable names and dates. Additionally, it compiles the results of the search into usable R formats, e.g., lists and data frames, including key station identifiers that enable users to find and download the data. When fully implemented, the package will be able to collate and export meteorological data from multiple networks. This R package will thus increase the efficiency and ease for individuals to obtain [Climate OR Met]  data from various sensor networks.    

The need for diverse users to access environmental data is growing. Meteorologists and climatologists use these data to construct models, earth and environmental scientists require climate data to study ecosystems, and policy makers rely on climate data for decision support. Although an abundance of freely available meteorological data exists throughout the United States, gathering it from the varied monitoring networks can be arduous. This is especially true if users are interested in numerous data types from different networks. For instance, a scientist might require soil moisture, solar radiation, and wind vector components to properly investigate and reconstruct local climate for a region of interest. At present, it is very difficult to determine what data are available in the area and how, where, and when they were collected. For example, variables of interest may not have been collected nearby, or sites that do report these variables may not have been active during the time period of interest. This in turn leads to a large number of wasted hours trying to find and gather freely available [Climate OR Met] data.

## Release Notes

## Development 

### Design Notes

### Future Features

* We are currently working on writing functions that adapt the functionality of existing R packages to help a metScanR user download data
	* Currently focused on writing functionality for downloading daily MET data from ACIS: http://www.rcc-acis.org/
* More MET networks


### Contacts

[Josh Roberti](jroberti@BattelleEcology.org)

[Lee Stanish](lstanish@BattelleEcology.org)

[Samantha Weintraub](sweintraub@BattelleEcology.org)

[Cody Flagg](cflagg@BattelleEcology.org)