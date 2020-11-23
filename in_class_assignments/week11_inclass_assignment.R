#In class assignment
#11/12/2020
#ECO 602
getwd()
install.packages("here")
library(here)
dat_delomys = read.csv(here("data", "delomys.csv"))
                        
#explore continuos vs categorical data
head(dat_delomys)

#plot a histogram of body mass
hist(dat_delomys$body_mass)

#plot a histogram of body length
hist(dat_delomys$body_length)

#plot a scatterplot of body length (on the y axis)
plot(dat_delomys$body_mass, 
     dat_delomys$body_length,
     xlab = "Body Mass (g)",
     ylab = "Body Length (mm)",
     main = "Scatterplot of Body Mass and Length of Delomys spp.")

#make a conditional boxplot of body mass by sex
boxplot(body_mass ~ sex, data = dat_delomys,
        xlab = 'Sex',
        ylab = 'Body Mass (g)',
        main = "Boxplot of Body Mass by Sex of Delomys spp.")

#make a conditional boxplot of body mass by species
boxplot(body_mass ~ binomial, data = dat_delomys,
        xlab = 'Species',
        ylab = 'Body Mass (g)',
        main = "Boxplot of Body Mass by Species of Delomys spp.")

#make a conditional boxplot of body mass by species and sex
boxplot(body_mass ~ sex * binomial, data = dat_delomys, 
        xlab = "Species",
        ylab = "Body Mass (g)",
        main = "Boxplot of Body Mass by Species and Sex",
        names = c("Female D. dorsalis", "Male D. dorsalis",
                  "Female D. sublineatus", "Male D. sublineatus"),
)


class(dat_delomys$X)
class(dat_delomys$body_mass)
class(dat_delomys$genus)
