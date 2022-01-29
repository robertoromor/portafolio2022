library(tidyquant) # To download the data
library(plotly) # To create interactive charts
library(timetk) # To manipulate the data series
library(forcats)


tickers = c('BAC', 'WFC', 'USB', 'PKX')
weights = c(0.5414,0.4039,0.0511,0.0036)


price_data_total<- tq_get(tickers[1],
                          from = '2014-01-01',
                          to = '2022-01-20',
                          get = 'stock.prices')


for (i in 2:length(tickers))
{
  
  price_data <- tq_get(tickers[i],
                       from = '2014-01-01',
                       to = '2022-01-20',
                       get = 'stock.prices')
  
  price_data_total<-rbind(price_data_total, price_data)
  
}