
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

totalPM25 <- tapply(NEI$Emissions, NEI$year, sum)

# plot
png("plot1.png")
plot(names(totalPM25), totalPM25, type="l",
     xlab="Year", ylab="PM2.5 (tons)")
dev.off()
