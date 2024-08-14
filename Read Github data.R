# Specify URL location of data on Github and retrieve it
data <- read.csv("https://raw.githubusercontent.com/SouthernMethodistUniversity/forecasting/main/Electricity.csv", header=FALSE)

# View the first few rows of the data
head(data)
# Summarize the data
summary(data)

# install.packages("fpp2")
library(fpp2)
# Change the raw data into a time series object using the ts function
# All you have to do is specify a beginning data and the frequency
# of the data. Assign the data to have a name of "Electricity".
Electricity <- ts(data,start=(1995.1),frequency=12)
# Use the autoplot function in the fpp2 library to get a nice
# plot of the data
autoplot(Electricity)
