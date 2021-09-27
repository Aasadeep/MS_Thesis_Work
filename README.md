# MS_Thesis_Work

### Climate Dynamics of Western-Central Hindu Kush Himalayas

#### 2.1. Study Area

We have identified specific areas explicitly from NWH (North Western Himalayas),WH (Western Himalayas) & TH (Tibetan Himalayas) in Western-Central HKH region based on change in trends observed in spatial plots. The equal area square boxes (equal latitude-longitudinal grid) were chosen for further study inside these 3 study area boxes i.e. NWH, WH & TH where some trend change was detected.

#### 2.2. Dataset

The meteorological data set was acquired from ERA5 (Table 1) in a .NetCDF file format where we have 40 years of monthly mean spatio-temporal data from 1979-2018 of  Indian Subcontinent.

1. Snowfall, 
2. Surface Temperature, 
3. Snow Cover Area, 
4. Snow Albedo, 
5. Snow Depth, 
6. Snow Depth Water Equivalent, 
7. Surface Sensible Heat flux, 
8. Surface Net Solar Radiation, 
9. Surface Net Thermal radiation 


_Horizontal Resolution Reanalysis_: 0.25° x 0.25° (atmosphere)

#### 2.3. The Codes

The programming languages used is MATLAB & R. Essential libraries/functions used are:

1. CDO Tool in Bash Terminal to convert .GRIB to .NetCDF format.

2. MATLAB functions
2. _**ncread**_ library to read, extract and process .NetCDF variable matrix data.
2. _**ktaub**_ function for Kendall tau b test.
2. _**corr**_ function for calculating spearman correlation.
2. _**shaperead**_ & _**mapshow**_ library to plot Indian boundary on spatial heat trend plots.
2. _**cftool**_ for regression analysis.

3. R libraries

3.1. mk.test for Mann Kendall Test.
3.2. sens.slope for Sen’s Slope Estimator
3.3. innovtrend For Innovative Trend Analysis.

procedure
1. Have a half Indian subcontinent area, and where you have a magnitude of different climatic parameters in 40 years of monthly averaged data of each point in the whole area. - DONE
2. Then you calculate correlation of all parameters and then intercorrelation of sf & sca with heat parameters. for confidence - 90%, 95%, 99%. - DONE
3. You Fit Indian boundary over them. - DONE
4. Selecting Parameter & their Areas w.r.t correlations significance for time period 
    1. Seasonal average of it. DJFM- winter stack, JJAS summer stack. 
    2. Yearly average of it. Yearly average. 

& doing linear regression of each time period.

 for all parameters or selective parameters SCA & Snowfall 

1. magnitude wise in trend and 
2. r values wise for intercorrelations.

curve fit for

selecting confidence value

1. 90% or 95% or 99%. or more than one.

& doing 3 data analysis  - 

1. Mann Kendall (from paper) + Spearman, Pearson (Regression) + Sen's slope.
2. ITA
3. PCA

First , make codes for djfm and annual codes

then take python codes for MK-tests, ITA, PCA etc.

