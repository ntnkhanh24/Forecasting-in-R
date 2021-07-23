setwd("C:/Users/ntnkh/OneDrive/Documents/ECON5337")

library (forecast)
library(ggplot2)

# Open the file "pset1.csv"
x = read.csv("pset1.csv")

x

# Assign variables atm to the full dataset 
# and atmHOLD to the dataset leaving out the last 6 observations

atm = ts(x[,2],start=c(1958,3),end=c(2021,1),frequency=12)
autoplot(atm)

atmHOLD = ts(x[,2],start=c(1958,3),end=c(2020,7),frequency=12)
autoplot(atmHOLD)

# compare with the original dataset to make sure that the variables
# are set right
tail(x)
tail(atm)
tail(atmHOLD)

# 1.a) Naive forecast

naive(atmHOLD, h=6)
    
#   b) Sample Mean forecast

meanf(atmHOLD, h=6)

# 2.a) Plot data
autoplot(atm)
monthplot(atm)
# comments: There is a upward trend in this dataset
# There is also a apparent seasonality 

# 3.a) Personally I would choose multiplicative forecast error 
# to minimize the error scale for easier observing the data.
# The trend can either be Additive or Multiplicative Damped, 
# but I would choose Additive since the data appears somewhat linear.
# Since seasonality exists in this dataset and appears to be 
# constant, the most appropriate Exponential Smoothing method 
# should be Holt-Winters Additive. 

hw(atmHOLD, h=6)
f6 = hw(atmHOLD, h=6)

#   b) 

# 4. Forecast the CO2 level in the next 40 years

hw(atmHOLD, h= 40*12)
f40 = hw(atmHOLD, h= 40*12)
autoplot(f40)

# Using my chosen model earlier, I strongly believe that
# atmospheric CO2 level are projected to rise above 450 ppm
# within the next 40 years.
# According to the forecasted data, this will occur around April 2034

ETSmodel = ets(atmHOLD)
ETSmodel
forecast(ETSmodel,h=40*12)

library(tidyverse)
library(tsibble)

# Obtain actual data
actualvalue=window(atm,start=c(2020,1))

actualvalue

tail(atm)

attributes(f6)

# Obtain forecast value
forecastvalue=f6$mean

forecastvalue

#Obatain the upper and lower band
Upper95=f6$upper[,2]

f6
Upper95

Lower95=f6$lower[,2]
Lower95

X=ts.union(actualvalue,forecastvalue,Upper95,Lower95)
autoplot(X)
