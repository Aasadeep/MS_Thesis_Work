# MS_Thesis_Work

### Climate Dynamics of Western-Central Hindu Kush Himalayas

#### 1. Study Area

We have identified specific areas explicitly from *NWH* (North Western Himalayas), *WH* (Western Himalayas) & *TH* (Tibetan Himalayas) in Western-Central HKH region based on change in trends observed in spatial plots. The equal area square boxes (equal latitude-longitudinal grid) were chosen for further study inside these 3 study area boxes i.e. NWH, WH & TH where some trend change was detected.

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

* ERA-5 reanalysis dataset in .grib format from ECMWF website was downloaded and was converted to .netcdf format via CDO tool in bash terminal and was processed in *MATLAB* (via *ncread*).

* The Kendall Tau-b ( via *ktaub*) of these climatic parameters (Sf, SCA, t2m, sd, sde, sshf, str) over whole spatial area (Indian subcontinent) of the available multi dimensional data for monthly averaged of 40 years temporal scale was plotted for each pixel (latitude/longitude) as a spatial heat plot, and also the correlation plots among these climatic parameters (SCA with Sf & t2m) and also fitting the Indian Boundary over these heat plots via *.shp* Indian Administrative Boundary in *MATLAB* (via *shaperead* & *mapshow*). (Plotting kendall & correlation values for confidence level - 99%, 95% & 90% and choosinng/selecting appropriate 3 spatial locations (study areas) - *NWH*, *WH* & *TH* based on where there is some significant trend/correlations observed of r/z value greater than atleast 0.5 of equal square grid box, in this case 2.1 x 2.1 was chosen).

* And then with those study areas of 3 locations i.e. NWH, WH & TH, box average for these climatic variables was estimated followed by converting them into 3 temporal scales i.e. *Annual*, *DJFM* & *JJAS* average for all variables on a yearly basis. They (40 yearly averaged variable magnitude values) were exported as .csv files for further trend analysis via Mann-Kendall Trend Test with Sen's Slope & Innovative Trend Analysis in *R*.

* *Spearman Correlation* was estimated in *MATLAB* for climatic variables SCA with t2m & Sf for all three temporal scales.

* Regression Analysis was done for all the .csv files exported and correlation plots were also generated.

#### 4. Codes provided in this repository

*




