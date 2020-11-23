# tuesday october 13, 2020
# eco 602 in class assignment

# michael's example and walkthrough

# observe a sample of birds
x_observed = c(2, 6)
print(x_observed)

# model the population of birds with a poisson distribution
dpois(x = 2, lambda = 4.5)
dpois(x = 6, lambda = 4.5)

# likelihood of observing these particular counts is product of individual likelihoods
dpois(x = 2, lambda = 4.5) * dpois(x = 6, lambda = 4.5)

# store the counts in a single vector
wiwa_counts = c(2, 6)
dpois(x = wiwa_counts, lambda = 4.5)

# calculate the product more easily
prod(dpois(x = wiwa_counts, lambda = 4.5))

# calculate the sum of log-likelihoods
sum(log(dpois(x = wiwa_counts, lambda = 4.5)))

# load in bird data
dat_bird = read.csv("bird.sta.csv")
dat_habitat = read.csv("hab.sta.csv")
dat_all = merge(dat_bird, dat_habitat)

# time for some data exploration
# start with a 5 number summary
summary(dat_all$WIWA)

# make a histogram
hist(dat_all$WIWA, breaks = 6)

# try a poisson distribution with lambda = 1.0
sum(log(dpois(x = dat_all$WIWA, lambda = 1.0)))

# question 1
wiwa_counts = c(2, 6)
sum(log(dpois(x = wiwa_counts, lambda = 4)))

# question 2
wiwr_counts = dat_all$WIWR
sum(log(dpois(x = wiwr_counts, lambda = 1.5)))
hist(dat_all$WIWR, breaks = 6)

# question 3
n = (length(wiwr_counts))
print(n)     
sum(log(dbinom(wiwr_counts, 1046, .001)))

    