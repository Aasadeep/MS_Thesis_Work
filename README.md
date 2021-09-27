# MS_Thesis_Work

### Climate Dynamics of Western-Central Hindu Kush Himalayas

#### 1. Study Area

We have identified specific areas explicitly from NWH (North Western Himalayas),WH (Western Himalayas) & TH (Tibetan Himalayas) in Western-Central HKH region based on change in trends observed in spatial plots. The equal area square boxes (equal latitude-longitudinal grid) were chosen for further study inside these 3 study area boxes i.e. NWH, WH & TH where some trend change was detected.

#### 2. Dataset

The meteorological data set was acquired from ERA5 (Table 1) in a .NetCDF file format where we have 40 years of monthly mean spatio-temporal data from 1979-2018 of  Indian Subcontinent.

1. Snowfall (Sf), 
2. Surface Temperature (t2m), 
3. Snow Cover Area (SCA), 
4. Snow Albedo (albedo), 
5. Snow Depth (sd), 
6. Snow Depth Water Equivalent (sde), 
7. Surface Sensible Heat flux (sshf), 
8. Surface Net Solar Radiation (ssr), 
9. Surface Net Thermal radiation (str) 


_Horizontal Resolution Reanalysis_: 0.25° x 0.25° (atmosphere)

#### 3. The Codes

The programming languages used is MATLAB & R. Essential libraries/functions used are:

* CDO Tool in Bash Terminal to convert .GRIB to .NetCDF format.

* MATLAB functions
    * _**ncread**_ library to read, extract and process .NetCDF variable matrix data.
    * _**ktaub**_ function for Kendall tau b test.
    * _**corr**_ function for calculating spearman correlation.
    * _**shaperead**_ & _**mapshow**_ library to plot Indian boundary on spatial heat trend plots.
    * _**cftool**_ for regression analysis.

* R libraries
    * _**mk.test**_ for Mann Kendall Test.
    * _**sens.slope**_ for Sen’s Slope Estimator
    * _**innovtrend**_ For Innovative Trend Analysis.

#### 4. Procedure
* Plot the Kendall Tau b of all climatic parameters (Sf, SCA, t2m, sd, sde, sshf, str) over whole spatial area (Indian subcontinent) of the available multi dimensional data for monthly averaged of 40 years temporal scale, and also the correlation plots among these climatic parameters where there is some significant trend/correlations observed. Fitting the Indian Boundary over these heat plots. (Plotting kendall & correlation values for confidence level - 99%, 95% & 90%).
2. 
3.
6. Selecting Parameter & their Areas w.r.t correlations significance for time period 
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

