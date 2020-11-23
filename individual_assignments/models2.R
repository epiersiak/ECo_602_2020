#Using Models II Individual Assignment

# load in penguin data
require(palmerpenguins)

#do a t-test where you compare the mean to 0
t.test(subset(penguins, species == "Gentoo")$flipper_length_mm)

#do a t-test where you compare the mean to 218
t.test(
  x = subset(penguins, species == "Gentoo")$flipper_length_mm,
  mu = 218
)

#do a t-test to see if flippers are smaller than 218
t.test(
  x = subset(penguins, species == "Gentoo")$flipper_length_mm,
  mu = 218,
  alternative = "less"
)

#do a t-test to compare flipper lengths of 2 species
t.test(flipper_length_mm ~ species, data = subset(penguins, species != "Chinstrap"))

#do a t-test to see if adelie has smaller flippers than gentoo
t.test(flipper_length_mm ~ species, data = subset(penguins, species != "Chinstrap"),
       alternative = "less")

#explore penguin data
par(mfrow = c(1, 2))
hist(penguins$body_mass_g, breaks = 80, main = "histogram of body mass", xlab = "body mass (g)")
plot(density(penguins$body_mass_g, na.rm = TRUE), main = "density plot of body mass")

#do a conditional boxplot
require(palmerpenguins)
boxplot(body_mass_g ~ species, data = penguins)

#get the mean of chinstrap body mass
dat_chinstrap = subset(penguins, species == "Chinstrap")
mean(dat_chinstrap$body_mass_g, na.rm = TRUE)

#do a shapiro test on it
shapiro.test(dat_chinstrap$body_mass_g)

#use a shortcut to find body mass of all of the species
aggregate(body_mass_g ~ species, data = penguins, FUN = mean)

#try this shortcut with shapiro test
#HOW DO I DO THIS

#fit a linear model
fit_species = lm(body_mass_g ~ species, data = penguins)

#look at model coefficients
summary(fit_species)

#do an anova
anova(fit_species)

#do a one-way anova
fit_species = lm(body_mass_g ~ species, data = penguins)
#lm stores it as a linear model

#look at the coefficients
summary(fit_species)

