#
# Configuration file for Tsunami input data generation
#

################## TSUNAMI PARAMETER ###########################

  #set global grid resolution, GEBCO: 30s, ETOPO1: 1m
  GLOBALGRIDRESOLUTION=15s
  
  GRIDFILE=data/grids/GEBCO_2020.nc

  #where are the points of interest/dart-stations stored?
  #format for the DARSTATIONSFILE: "lon lat dartstationname"
  #  -> the points will be converted using the projection defined below
  #  -> the points will be plotted on the overview map
  DARTSTATIONSFILE=data/poi/2011_10_05_dart_stations_gmt.txt

  #region for the plot
  PLOTREGION=-120/-60/-55/-15 #chile

  #set the type of the (grid-)projection
  PROJECTIONTYPE=cylindrical
  
  #select the region to work on
  REGION_WORK=-120/-65/-55/-15 #chile

  #select the region to cut
  REGION_CUT=-3000000/500000/-1500000/1500000

  #set the projection itself
  #  -> help: http://gmt.soest.hawaii.edu/gmt/html/man/grdproject.html
  PROJECTION="tmerc/-72.898/-36.122/0.9996" #cylindrical, USGS epicenter
  
  #projection for the plot
  #  -> help: http://gmt.soest.hawaii.edu/gmt/html/man/pscoast.html
  PLOTPROJECTION=m.30c

  #select the grid spacing (meters) of the final grid
  GRIDSPACING=250
 
  #preceding tag
  METANAME=chile_gebco20_usgs_250m

  #parameters for the calculation of the displacement
  DISPLCONFIG=data/subfaults/2010_02_27_chile_15sec.cfg

  #which subfaults should be tranformed
  #   -> source for lots of subfault-models http://earthquake.usgs.gov/
  DISPLSUBFAULTS=data/subfaults/2010_02_27_chile_usgs.txt