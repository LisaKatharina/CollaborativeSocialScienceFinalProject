library(httr)
library(dplyr)
library(XML)
library(maptools)

# Get KML from Google Map
Initiativen_Kml <- getKMLcoordinates(kmlfile="C:/Users/Christopher/Desktop/Löschen/Daten/Lokale Initiativen/Mit Namen.kml", ignoreAltitude=T)
Initiativen_Kml
Initiativen <- data.frame(Initiativen_Kml)

# Get Bundeswahlleiter
BWL <- read.csv("http://www.bundeswahlleiter.de/de/bundestagswahlen/BTW_BUND_13/strukturdaten/StruktBtwkr2013.csv", header = FALSE, sep=";")

# Get Shapefiles
Shape<-readShapeSpatial("C:/Users/Christopher/Desktop/Löschen/Daten/Geometrie_Wahlkreise_18DBT_VG1000.shp")
