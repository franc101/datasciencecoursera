NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# baltimore data
NEI.baltimore <- NEI[NEI$fips=="24510",]
totalPM25 <- tapply(NEI.baltimore$Emissions, 
                    NEI.baltimore$year, sum)

# plot
png("plot2.png")
plot(names(totalPM25), totalPM25, type="l",
     xlab="Year", ylab="PM2.5 (tons) in Baltimore City")
dev.off()
