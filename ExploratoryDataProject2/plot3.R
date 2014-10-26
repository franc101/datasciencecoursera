NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

emissions <- aggregate(Emissions ~ year + type,
                       data=NEI[NEI$fips=="24510",], sum)

# plot
png("plot3.png")
qplot(year, Emissions, data=emissions, color=type, geom="path")
dev.off()
