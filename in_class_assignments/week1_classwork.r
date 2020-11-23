## classwork from eco 602 september 1
## practicing with the iris data set

## load in data
data(iris)

## look at top 6 rows
head(iris)

## calculate mean of sepal length
mean(iris$Sepal.Length)

## calculate std dev sepal width
sd(iris$Sepal.Width)

## build a scatterplot of iris sepal width and length
plot(x = iris$Sepal.Width, y = iris$Sepal.Length)

## find the center of the data
data_center_x = mean(iris$Sepal.Width)
data_center_y = mean(iris$Sepal.Length)
c(data_center_x, data_center_y)

## add a point to an existing plot
plot(x = iris$Sepal.Width, y = iris$Sepal.Length)
points(x = data_center_x, y = data_center_y, col = "red")

##load a custom function into R's workspace
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

##add a curve to an existing plot
plot(x = iris$Sepal.Width, y = iris$Sepal.Length)
points(x = data_center_x, y = data_center_y, col = "red")
curve(
  line_point_slope(
    x,
    data_center_x,
    data_center_y,
    -0.1),
  add = TRUE
)

## try other variables or datasets

##what's in the iris dataset?
View(iris)

## load in CO2 dataset
data(CO2)

## what's in CO2?
View(CO2)
head(CO2)

## make a plot of concentration vs uptake
plot(x = CO2$conc, y = CO2$uptake)

## find the center of the data
data_center_x_co2 = mean(CO2$conc)
data_center_y_co2 = mean(CO2$uptake)
c(data_center_x_co2, data_center_y_co2)

## add the centerpoint of the data to the plot
plot(x = CO2$conc, y = CO2$uptake)
points(x = data_center_x_co2, y = data_center_y_co2, col = "red")


## load in the MASS library
library(MASS)
data(Animals)
head(Animals)

## plot the Animals data
plot(x = Animals$body, y = Animals$brain)

data_center_x_animals = mean(Animals$body)
data_center_y_animals = mean(Animals$brain)
c(data_center_x_animals, data_center_y_animals)

points(x = data_center_x_animals, y = data_center_y_animals, col = "red")
