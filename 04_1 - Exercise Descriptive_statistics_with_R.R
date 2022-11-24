# Descriptive statistics and visualization in R

equake <- datasets::quakes

# displaying first 10 rows
head(equake, 10)

# displaying the last 10 rows
tail(equake, 10)

# extracting the first two columns
equake[, 1:2]

# excluding the last column
equake[, -5]

equake$depth

# getting the summary of columns
summary(equake$lat)
summary(equake$long)

# getting the summary of whole dataset
summary(equake)

# plotting in R
plot(equake$lat)
plot(equake$depth)

# points and lines
plot(equake$depth, type='l')

# both points and lines
plot(equake$depth, type="b")

# adding information to the plot
plot(equake$depth, type='p', main = "Earth quake depth",
     xlab = "Entries", ylab = "Earth Quake Depth",
     col='red')

# scatter plot
plot(equake$mag, equake$depth, main = "Scatter plot - Depth v/s magnitude", type = 'p',
     xlab = "Magnitude", ylab = "Depth")

# plotting the entire dataset
plot(equake)

# Horizontal bar chart
barplot(equake$stations, main = "Earth Quake stations",
        xlab = "Station no", ylab = "Frequency", col = "red",
        axes = T, horiz = F)

# Histogram
hist(equake$depth)
# adding details to the above historgram
hist(equake$depth, main = "Earth quake depth",
     xlab = "Depth", col = "green")

# boxplot
boxplot(equake$depth, main = "Box Plot")
boxplot(equake$lat, main="Boxplot - lat")
boxplot(equake$long, main="box plot - lat")
boxplot(equake$mag, main="box plot mag")
boxplot(equake$stations, main="box plot stations")

boxplot.stats(equake$stations)$out

# multiple box plots
boxplot(equake[, 1:5], main="All box plots")

# Creating all plots in a single layout
par(mfrow=c(2,2), mar=c(1, 2, 3, 1), las=0, bty='o')

plot(equake$lat, type='l')
hist(equake$stations)
hist(equake$depth, main = "depth histogram")

# standard deviation
sd(equake$depth)
sd(equake$depth, na.rm=T) # na.rm=True -> remove NA values
sd(equake$lat)
sd(equake$long, na.rm=F)
sd(equake) # will give error
sd(equake$mag, na.rm=T)

# variance
var(equake$lat)
var(equake$lat, na.rm=T)
var(equake$long, na.rm=T)
var(equake$depth, na.rm=T)
var(equake$mag, na.rm=T)
var(equake$stations, na.rm=T)

# skewness and kurtosis
# install "moments" package to access skewness & kurtosis functions
skewness(equake$mag)
skewness(equake$lat)
kurtosis(equake$lat)
kurtosis(equake$depth)
