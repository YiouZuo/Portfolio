This is a sample file based on a project I did to find out that, in a given city, if there are areas (defined as hexagons) that have extraordinary footfall comparing to its neighbour areas. In this sample, I'm using a subset of hexagons of New York City, and the footfalls are random numbers between 0 to 500. Then 5 randomly picked hexagons have footfalls replaced by random numbers between 1000 to 5000. 

You may find the hexagons generation here: https://github.com/teralytics/geohex



File ExtractData.ipynb:


YOU'LL NOT BE ABLE TO RUN THIS CODE AND REPRODUCE THE RESULTS. This file serves the only purpose of documenting how I extract NYC sample data.



File NeighborComparison.ipynb:


Input files include:

- NYC_sample_geometries.csv: 
    
  - AreaId: Unique identifier of a hexagon.
    
  - Geometry: Well-known text (WKT) representation of the hexagons.

- NYC_sample_flow.csv:
    
  - AreaId: Hexagon ID.
    
  - NewCount: Number of persons which entered the hexagon during the time interval [StartTime, StartTime + 1 hour].
    
  - StartTime: "yyyy-mm-dd HH:MM:SS" representation in local time (daylight saving time, UTC−04:00).



Output files include:

- NYC_sample_hexagons (.dbf, .shp, .shx): intermediate shapefile for calculating neighbors.

- NYC_sample_difference.cv: 
    
  - AreaId: Hexagon ID.
    
  - StartTime: "yyyy-mm-dd HH:MM:SS" representation in local time (daylight saving time, UTC−04:00).
    
  - Difference: NewCount, as in NYC_sample_flow.cv, minus the average of all its neighbours.



The code includes 4 steps:

1. Generate the shapefile based on hexagon geometry file

2. Generate the neighbour set for each hexagon

3. Compare each hexagon's footfall with the average of its neighbours

4. Run a clustering to detect any outlier

 

