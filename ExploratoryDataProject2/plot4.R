NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

SCC.Coal <- SCC$SCC[grep("Coal", SCC$Short.Name)]
NEI.Coal <- NEI[NEI$SCC %in% SCC.Coal, ]
PM25 <- tapply(NEI.Coal$Emissions, NEI.Coal$year, sum)

# plot
png("plot4.png")
plot(names(PM25), PM25, type="l",
     xlab="Year", ylab="PM2.5 (tons) Coal")
dev.off()

