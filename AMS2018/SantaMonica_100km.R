#code for metScanR code:
metadata<-metScanR:::metScanR_DB
countryStats<-unlist(lapply(lapply(metadata,"[[","location"),"[[", "country"))
labels <- names(sort(table(countryStats),decreasing = T))[1:20]
mp <- barplot(sort(table(countryStats),decreasing = T)[1:20],axes = FALSE, axisnames = FALSE)
text(mp, par("usr")[3], labels = labels, srt = 45, adj = c(1.1,1.1), xpd = TRUE, cex=0.9)
axis(2)

#start dates:
startDates<-as.numeric(substr(unlist(lapply(lapply(metadata,"[[","location"),
                                            "[[", "date.begin"),use.names = F),0,4))
hist(startDates, main ="Histogram of Station Start Dates", xlab= "Date")

#Idenfiers:
identifiers<-unlist(lapply(lapply(metadata,"[[","identifiers"),
                                             "[[", "idType"),use.names = F)
labels <- names(sort(table(identifiers),decreasing = T))
mp <- barplot(sort(table(identifiers),decreasing = T),axes = FALSE, axisnames = FALSE)
text(mp, par("usr")[3], labels = labels, srt = 45, adj = c(1.1,1.1), xpd = TRUE, cex=1)
axis(2)

#oldest station:
oldestStation<-metScanR::getDates(endDate = "1800-01-01")


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
