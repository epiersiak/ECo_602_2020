# ECO 602
# In-class R coding week 3
# September 8th, 2020

# Read in the data from github
dat_birds <- read.csv("https://michaelfrancenelson.github.io/eco_602_634_2020/data/bird.sta.csv")
dat_habitat <- read.csv("https://michaelfrancenelson.github.io/eco_602_634_2020/data/hab.sta.csv")


# Create pair plot for dat_habitat, subsetting by name
pairs(dat_habitat[, c("elev", "ba.tot", "p.edge.1")])

# Create histogram using bird count data
hist(dat_birds$WIWA, main = "Histogram of Wilson's Warbler Abundance", xlab = "Number of Birds Counted", breaks = 0:7 - 0.5)
