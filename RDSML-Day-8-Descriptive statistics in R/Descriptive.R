#Descriptive statistics using psych package

install.packages("psych")
library(psych)

# Using the New York airport flight data
install.packages("nycflights13")
attach(nycflights13::flights)

# Lets look at the first 6 records using the head() function
head(nycflights13::flights)

summary(distance)
describe(distance)

demo <- cbind(arr_delay, dep_delay, distance)
describe(demo)

colnames(demo) <- c('Arrival delay', 'Departure Delay', 'Distance Travelled')
describe(demo)

hist(dep_delay)
# How to group descriptive statistics
describeBy(distance, group=carrier)

# two levels of aggregation
aggregate(distance, by=list(carrier, month), FUN=mean, na.rm=T)
