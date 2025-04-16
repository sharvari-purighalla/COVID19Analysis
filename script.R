rm(list=ls()) # removes all previously stored variables
library(Hmisc)

data <- read.csv("~/Desktop/COVID19Analysis/COVID19_line_list_data.csv")
describe(data)

# cleaned up death column
data$death_dummy <- as.integer(data$death != 0)
#death rate
sum(data$death_dummy) / nrow(data)

# AGE
# claim: people who die are older than people who survive
dead = subset(data, death_dummy == 1)
alive = subset(data, death_dummy == 0)
mean(dead$age, na.rm = TRUE)
mean(alive$age, na.rm = TRUE)

# is this statistically significant?
t.test(alive$age, dead$age, alternative="two.sided", conf.level = 0.99) #used t-test

# if p-value < 0.05, we reject null hypothesis
# p-value ~ 0, so reject null hypothesis-- conclude that this is statistically significant

# GENDER
# claim: gender has no effect on death rates
men = subset(data, gender == "male")
female = subset(data, gender == "female")
mean(men$death_dummy, na.rm = TRUE)
mean(female$death_dummy, na.rm = TRUE)

# is this statistically significant?
t.test(men$death_dummy, female$death_dummy, alternative="two.sided", conf.level = 0.99) #used t-test

# men have 0.8% to 8.8% higher chance of dying
# p-value = 0.002 < 0.05 -- conclude that this is statistically significant