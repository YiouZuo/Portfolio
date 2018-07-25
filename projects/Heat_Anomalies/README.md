The overall goal of this coding test is to compute a heat index (I chose maximum temperature) 
at a given administrative level (I chose national level). 

The interviewer recommended to use gridded weather data as underlying, 
e.g., E-OBS http://www.ecad.eu/download/ensembles/download.php or similar (I downloaded data from the provided website, 1995-2015). 
The spatial aggregation can be performed for any administration level and any region (I chose Switzerland since that's where I was). 
Publicly available shapefiles (most probably needed for the spatial aggregation) can be found here (http://www.gadm.org/). 

The test also required: 
1) the weather index of choice must reflect the seasonal severity of heat. 
2) test the time series for possible trends and, 
3) if the latter are found, use a detrending method to produce a new time series. 
4) Use the detrended time series to calculate seasonal/annual heat anomalies.
