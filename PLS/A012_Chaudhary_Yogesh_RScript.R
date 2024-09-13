WorldGDP = 97000000000
USGDP = 23000000000
USOutputPercentage = (USGDP/WorldGDP) * 100
WorldGDP = 97000000000000
USGDP = 23000000000000
Largest5 = c(23, 15, 13, 11, 7)
Economicgrowth = Largest5 * 1.056

DatasetforNA = subset(HW5_GDPChildIlliteracyF23, Continent == "NorthAmerica")
DatasetforSA = subset(HW5_GDPChildIlliteracyF23, Continent == "SouthAmerica")
DatasetforAfrica = subset(HW5_GDPChildIlliteracyF23, Continent == "Africa")
DatasetforAsia = subset(HW5_GDPChildIlliteracyF23, Continent == "Asia")
DatasetforAus = subset(HW5_GDPChildIlliteracyF23, Continent == "Australia")
DatasetforEU = subset(HW5_GDPChildIlliteracyF23, Continent == "Europe")

meanforNA = mean(DatasetforNA$child.illiteracy)
meanforSA = mean(DatasetforSA$child.illiteracy)
meanforAfrica = mean(DatasetforAfrica$child.illiteracy)
meanforAsia = mean(DatasetforAsia$child.illiteracy)
meanforAus = mean(DatasetforAus$child.illiteracy)
meanforEU = mean(DatasetforEU$child.illiteracy)

boxplot(DatasetforAsia$child.illiteracy)
hist(DatasetforAsia$child.illiteracy, xlab="Child Illiteracy", ylab ="Frequency",
     main = "Yogesh Chaudhary's Asia CI Rates Histogram")
plot(DatasetforAsia$child.illiteracy, DatasetforAsia$GDP, xlab = "Illiteracy",
     ylab= "GDP")
lm(formula = DatasetforAsia$GDP ~ DatasetforAsia$child.illiteracy)
abline(11531.1, -128.7) #Name: Yogesh Chaudhary ID:916969303
