rm(list = ls())

setwd("c:/UCSBprojects/ROBIS/")
library(devtools)
library(robis)

context("occurence")
context("checklist")


species <- "Macrocystis pyrifera"

data <- occurrence(species)

data <- occurrence(aphiaid = 232231)

data <- occurrence(species, 
                   fields = c("id","decimalLongitude", "decimalLatitude","aphiaID","genus","species","yearcollected"))

data <- occurrence(species, geometry = "POLYGON ((-118.5 33.5, -121.0 33.5, -121.0 34.5, -118.5 34.5,-118.5 33.5))")

leafletmap(data)

write.csv(data,"c:/UCSBprojects/ROBIS/data/kelp.csv",row.names = F)

data <- checklist(species, year = 2013)

#channel island
data <- checklist(year=c(2005,2010),geometry = "POLYGON ((-118.5 33.5, -121.0 33.5, -121.0 34.5, -118.5 34.5,-118.5 33.5))")
write.csv(data,"c:/UCSBprojects/ROBIS/data/channel island.csv",row.names = F)


#others
#LINESTRING (30 10, 10 30, 40 40)
#POLYGON ((30 10, 40 40, 20 40, 10 20, 30 10))
#MULTILINESTRING ((10 10, 20 20, 10 40),(40 40, 30 30, 40 20, 30 10))
#MULTIPOLYGON (((30 20, 45 40, 10 40, 30 20)),((15 5, 40 10, 10 20, 5 10, 15 5)))