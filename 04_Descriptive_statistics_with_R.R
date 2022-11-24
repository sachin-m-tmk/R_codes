# save the R scripts with ".R" extension.

### press control+enter to run a particular line of code (only cursor should be 
### present in that particular line of code)

# importing the file from local directory
# airquality <- read.csv("path/airquality.csv", header=TRUE, sep=",")

# importing built-in dataset
# to view the available built-in datasets, just type "datasets::"
airquality <- datasets::airquality

# displaying first 10 rows
head(airquality, 10)

# displaying last 10 rows
tail(airquality, 10)


# extracting first two columns
airquality[, c(1,2)]

# excluding the last column of the dataset and storing it in a new variable
df <- airquality[, -6]

# accessing a column and seeing values in it by using dollar symbol
airquality$Wind

# viewing the summary statistics of a column
summary(airquality$Wind)

summary(airquality$Ozone)

# generating the summary statistics for all the columns in a dataset
summary(airquality)

# visualization in R
plot(airquality$Wind)  # prints a scatter plot

# scatter plot : temp v/s wind
plot(airquality$Temp, airquality$Wind, type="p") # type= 'p'-> points, 'l'-> lines, 'b'-> both

# plotting the whole dataset
plot(airquality)

# points and lines
plot(airquality$Wind, type='l')

# both points and lines
plot(airquality$Wind, type='b')

# adding details such labels, title, and colour to our plot
plot(airquality$Wind, xlab = 'Ozone concentration',
     ylab = 'No of Instances', main = "Ozone leves in NY city",
     col = 'blue')

# Horizontal bar plot
barplot(airquality$Ozone, main = "Oxone Concentration in air", 
        ylab = "Ozone levels", col="blue", horiz = F, axes = T)

# Histogram
hist(airquality$Temp)

# Adding information to the above histogram
hist(airquality$Temp, main = "Solar Radiation values in ari",
     xlab = "Solar Rad", col = "blue")

# Single box plot
boxplot(airquality$Wind, main = "Box plot")
# getting the outliers in the Wind column using boxplot
boxplot.stats(airquality$Wind)$out  # see the console

# Multiple boxplots
boxplot(airquality[, 1:4], main = "Multiple")

# Creating all plots in a common layout

# creating a layout using par() function
par(mfrow=c(3,3), mar=c(2, 5, 2, 1), las=0, bty='o')

### mfrow : no of rows and columns
### mar : margin of the grid
### las : lables. las=1 for horizontal, las=0 for vertical
### bty : box around the plot. bty="n" for no boundary. bty="o" with boundary

plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type='l')
plot(airquality$Ozone, type='p')
plot(airquality$Ozone, type = 'l')
barplot(airquality$Ozone, main = "Ozone Concentration in air", 
        xlab = "Ozeone levels", col='green', horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[, 1:4], main="Multiple box plots")
