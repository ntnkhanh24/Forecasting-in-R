# Forecasting-in-R
Time Series, Naive Forecast, Sample Mean Forecast, Holt Winter, ETS Model, Plot
This dataset “pset1.csv.” contains monthly observations for atmospheric CO2 running from March 1958 through January 2021. Begin by loading the data into R.

We will use a hold-out period here, which corresponds to the last six observations in the full sample. The period from August 2020 through January 2021 will not be used in the estimation of any of the models. You will likely want to create a time series corresponding to the entire data set and another than contains only the observations from March 1958 through July 2020.

1). For your restricted time series, we will find forecasted values for the following simple forecasts (numeric values with confidence bands only)
		- naïve forecasts
		- sample mean forecasts

2). Plot of the data and comment on the following aspects:
		- trend
		- seasonality

3). Select one of the methods from the family of exponential smoothing models, based on the previous steps. briefly describe why. At this stage, no using ets function within R.
	  Based on the selected model, provide a six-step ahead forecast for atmospheric CO2 data (for August 2020 through January 2021). Please provide each of the following:
		a). The numeric values for your forecast (including confidence bands)
		b). A plot containing the forecasted values, upper and lower confidence bands for your forecast, and actual values of atmospheric CO2. For the actual data, please include a small amount of data prior to the forecast period, along with the actual values for August 2020 through January 2021.

4). There is considerable debate regarding safe levels of atmospheric CO2 and the effects of CO2 on global temperatures. Some environmental scientists have established goals to keep average global temperatures from rising by no more than 2 degrees Celsius relative to pre-industrial period levels. According to the OECD, scientists have determined the chances of keeping global temperatures from rising by no more than 2 degrees are less than 50-50 relative to pre-industrial period standards should atmospheric CO2 rise above 450 parts per million.
Using the estimated model selected above, determine if atmospheric CO2 levels are projected to rise above 450 parts per million within the next 40 years (with only the data through July 2020)? If so, when that this will occur, if it will occur at all? 
