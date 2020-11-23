# ECO 602
# In-class R coding week 3
# September 10th, 2020

# load in the palmerpenguins dataset
library("palmerpenguins")

# check what kind of object penguins is
class("palmerpenguins")

# convert penguins to a dataframe
penguins = data.frame(penguins)

# calculate the mean of bill length
mean(penguins$bill_length_mm)

# use head to preview the data
head(penguins)

# calculate the mean bill length, removing null data
mean(penguins$bill_length_mm, na.rm = TRUE)

# try the summary function on the penguins data frame
summary(penguins)

# try out some old plots for data exploration
pairs(penguins[, c("bill_length_mm", "bill_depth_mm", "flipper_length_mm", "body_mass_g")])

plot(penguins$bill_depth_mm, penguins$bill_length)

hist(penguins$bill_length_mm, main = "Histogram of Palmer Penguins Bill Length", xlab = "Bill Length (mm)")

# try some new plots for data exploration
boxplot(penguins$bill_depth_mm)

boxplot(bill_length_mm ~ sex, data = penguins)

# compare two boxplots side by side
par(mfrow = c(1,2))
boxplot(penguins$body_mass_g)
boxplot(body_mass_g ~ species, data = penguins)

# make some coplots
coplot(body_mass_g ~ bill_depth_mm | sex, data = penguins)

# try a numerical conditioning variable
coplot(body_mass_g ~ bill_depth_mm | bill_length_mm, data = penguins)

# save plots to a file using the png() method

library(here)
png(filename = here("basic_histogram.png"), width = 800, height = 600)
hist(penguins$body_mass_g)
dev.off()
getwd()

plot(x = penguins$species,
     y = penguins$body_mass_g)
