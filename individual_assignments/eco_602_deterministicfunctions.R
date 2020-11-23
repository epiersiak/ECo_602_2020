# ECO 602
# Individual assignment: deterministic functions
# 9/25/2020

# install the package "here"
install.packages("here")

library(here)
here()
getwd()
dat_habitat <- read.csv(here("hab.sta.csv"))

# create histograms for the three terrain variables
hist(dat_habitat$elev, main = "Histogram of sampling site elevation", xlab = "Elevation (m)")

hist(dat_habitat$slope, main = "Histogram of sampling site slope", xlab = "Percent Slope")

hist(dat_habitat$aspect, main = "Histogram of sampling site aspect", xlab = "Aspect (degrees)")

a# Calculates the value of x for a linear function, given the coordinates of a known point (x1, y1) 
# and the slope of the line.
line_point_slope = function(x, x1, y1, slope)
{
  get_y_intercept = 
    function(x1, y1, slope) 
      return(-(x1 * slope) + y1)
  
  linear = 
    function(x, yint, slope) 
      return(yint + x * slope)
  
  return(linear(x, get_y_intercept(x1, y1, slope), slope))
}


# create scatterplots for the three terrain variables (on x) and basal area (on y)
plot(dat_habitat$elev, dat_habitat$ba.tot, main = "Scatterplot of elevation and total basal area", 
     xlab = "Elevation (m)", ylab = "Total Basal Area (m^2/ha)")
curve(line_point_slope(x, x1 = 85, y1 = 25, slope = 0.01), add = TRUE)

plot(dat_habitat$slope, dat_habitat$ba.tot, main = "Scatterplot of slope and total basal area", 
     xlab = "Percent slope", ylab = "Total Basal Area (m^2/ha)")
curve(line_point_slope(x, x1 = 0, y1 = 30, slope = 0.01), add = TRUE)

plot(dat_habitat$aspect, dat_habitat$ba.tot, main = "Scatterplot of aspect and total basal area", 
     xlab = "Aspect (degrees)", ylab = "Total Basal Area (m^2/ha)")
curve(line_point_slope(x, x1 = 0, y1 = 20, slope = 0.01), add = TRUE)

