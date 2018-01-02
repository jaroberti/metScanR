#start here
metScanR::mapSiteFinder(metScanR::getNearby(lat=34.0259, lon =-118.7798,radius=500))
#find stations with temperature
metScanR::mapSiteFinder(metScanR::siteFinder(lat=34.0259, lon =-118.7798,radius=500,vars = "precipitation"))
#narrow down to specific variables (wind)
metScanR::mapSiteFinder(metScanR::siteFinder(lat=34.0259, lon =-118.7798,radius=500,vars = "wind"))
#find stations with precipitation
metScanR::mapSiteFinder(metScanR::siteFinder(lat=34.0259, lon =-118.7798,radius=500,vars = "temperature"))
#narrow down spatially: first zoon way in and then go from there:
metScanR::mapSiteFinder(metScanR::siteFinder(lat=34.0259, lon =-118.7798,radius=50, vars="precipitation"))
#narrow down spatially: first zoon way in and then go from there:
metScanR::mapSiteFinder(metScanR::siteFinder(lat=34.0259, lon =-118.7798,radius=50, vars="wind"))
#narrow down spatially: first zoon way in and then go from there:
metScanR::mapSiteFinder(metScanR::siteFinder(lat=34.0259, lon =-118.7798,radius=50, vars="temperature"))
#grab data for July thru Dec 2017 for 2-3 sites (ASOS and COOP) and then show data
#wind roses
#precip graphs
#tempreature graphs
#say how long it took in metScanR

#temperature at high elevations - start worldwide
metScanR::mapSiteFinder(metScanR::getElevation(c(3500,250)))  #make a gif over time
#gif of vietnam


#NADP
metScanR::mapSiteFinder(metScanR::getVars(c("Mercury","pH","conductivity")))

#example for a photsynthesis study: PAR, phenocam etc.
