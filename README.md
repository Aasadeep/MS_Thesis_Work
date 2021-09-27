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
    * `ncread` library to read, extract and process .NetCDF variable matrix data.
    * `ktaub` function for Kendall tau b test.
    * `corr` function for calculating spearman correlation.
    * `shaperead` & `mapshow` library to plot Indian boundary on spatial heat trend plots.
    * `cftool` for regression analysis.

* R libraries
    * `mk.test` for Mann Kendall Test.
    * `sens.slope` for Sen’s Slope Estimator
    * `innovtrend` for Innovative Trend Analysis.

#### 4. Procedure

* ERA-5 reanalysis dataset in .grib format from ECMWF website was downloaded and was converted to .netcdf format via CDO tool in bash terminal and was processed in *MATLAB* (via *ncread*).

* The Kendall Tau-b ( via `ktaub`) of these climatic parameters (Sf, SCA, t2m, sd, sde, sshf, str) over whole spatial area (Indian subcontinent) of the available multi dimensional data for monthly averaged of 40 years temporal scale was plotted for each pixel (latitude/longitude) as a spatial heat plot, and also the correlation plots among these climatic parameters (SCA with Sf & t2m) and also fitting the Indian Boundary over these heat plots via *.shp* Indian Administrative Boundary in *MATLAB* (via `shaperead` & `mapshow`). (Plotting kendall & correlation values for confidence level - 99%, 95% & 90% and choosinng/selecting appropriate 3 spatial locations (study areas) - *NWH*, *WH* & *TH* based on where there is some significant trend/correlations observed of r/z value greater than atleast 0.5 of equal square grid box, in this case 2.1 x 2.1 was chosen).

* And then with those study areas of 3 locations i.e. NWH, WH & TH, box average for these climatic variables was estimated followed by converting them into 3 temporal scales i.e. *Annual*, *DJFM* & *JJAS* average for all variables on a yearly basis. They (40 yearly averaged variable magnitude values) were exported as .csv files for further trend analysis via Mann-Kendall Trend Test with Sen's Slope & Innovative Trend Analysis in *R*.

* *Spearman Correlation* was estimated in *MATLAB* for climatic variables SCA with t2m & Sf for all three temporal scales. (`corr`)

* Regression Analysis was done for all the .csv files exported and correlation plots were also generated. (`cftool`)

#### 5. Codes provided in this repository

##### 1. Directories & Files

| Directories/Files   | Description |
|-------------|-----|
|**Snow_Cover_Area(SCA)_with_Snowfall(Sf)**| contains codes, location based correlation & spatial correlation plots for SCA with Sf|  
|**Snowfall(Sf)**| contains codes, temporal averaged csv files, location based temporal, spatial trend plots & trend analysis for Sf|  
|**Thesis_file.pdf**|  contains Master's Thesis done at IISER Kolkata for one year 2020-2021|  
|**Thesis_presentation.pdf**| MS Thesis presentation given at IISER Kolkata climate & environmental studies panel|  

##### 2. Codes 

* Snow_Cover_Area(SCA)_with_Snowfall(Sf) (Directory)

| Sub-Directory  | Output | Codes Description |
|------------------|-------------|-----|
|SCA_Sf_Spatial_corelation_plots(MATLAB)| Spatial Correlation Plot (MATLAB) | Run `intercorr_sca_sf.m` which would generate correlation heat plot of SCA with Sf, as an output `r_sf_sca.fig`, and then run `for 001.m` for confidence value 99% generating `r_sf_sca_001.fig`, sequentially run `boundary.m` which would use `Admin.shp`, to generate output `r_sf_scab.fig`, which is the required output, which is saved as `1.png`|  
|SCA_Sf_Location_Based_Correlation_Plots_<br />for_different_temporal_scales(MATLAB)| Regression Plots (MATLAB) |in `Codes`, run `sca_sf_nwh.m`, `sca_sf_wh.m` & `sca_sf_th.m` which would generate correlation csv files present in `Correlation_Values_Excel_files` and also regression plots via `cftool` present in `Output_temporal_regression_plots`, they need to be analyzed in MATLAB GUI `cftool` and then it would be saved as .png format|  


* Snowfall(Sf) (Directory)

| Sub-Directory  | Output | Codes Description |
|------------------|-------------|-----|
|Snowfall_Spatial_trend_plots(MATLAB)| Spatial Trend Plot (MATLAB) | Run `trend_sf.m` which would generate trend heat plot of Sf using function `ktaub.m`, as an output `z_snowfall_90b.fig`, that can saved as `z_snowfall_90b.png` by taking into consideration of 99% confidence & fitting Indian Admin boundary via `Admin.shp`, which is the required output|  
|Snowfall_Location_Based_Temporal_Plots_<br />for_different_temporal_scales(MATLAB)| Regression Plots (MATLAB) |in `Codes`, run `sf_nwh.m`, `sf_wh.m` & `sf_th.m` which would generate correlation csv files present in `Correlation_Values_Excel_files` & csv files for further trend analysis in `Temporal_Stacking_Excel_files` and also regression plots via `cftool` present in `Output_temporal_regression_plots`, they need to be analyzed in MATLAB GUI `cftool` and then it would be saved as .png format|  
|Snowfall_Trend_Analysis(R)| Trend Values, Z, Spearman, ITA | Run `trend.R` for each csv file saved in `Temporal_Stacking_Excel_files` from previous sub-directory to generate mann-kendall z values, spearman & innovative trend test values| 

 




