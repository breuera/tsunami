#
# Configuration file for Tsunami input data generation
#

################## TSUNAMI PARAMETER ###########################

  #set global grid resolution, GEBCO: 30s, ETOPO1: 1m
  GLOBALGRIDRESOLUTION=15s
  
  GRIDFILE=data/grids/gebco_08.nc

  #where are the points of interest/dart-stations stored?
  #format for the DARSTATIONSFILE: "lon lat dartstationname"
  #  -> the points will be converted using the projection defined below
  #  -> the points will be plotted on the overview map
  DARTSTATIONSFILE=data/poi/2011_10_05_dart_stations_gmt.txt

  #region for the plot
  PLOTREGION=138/165/28/46 #japan

  #set the type of the (grid-)projection
  PROJECTIONTYPE=cylindrical
  
  #select the region to work on
  REGION_WORK=138/175/28/46 #pacific

  #select the region to cut
  REGION_CUT=-200000/2500000/-750000/750000

  #set the projection itself
  #  -> help: http://gmt.soest.hawaii.edu/gmt/html/man/grdproject.html
  PROJECTION="tmerc/142.373/38.297/0.9996" #cylindrical, USGS epicenter
  
  #projection for the plot
  #  -> help: http://gmt.soest.hawaii.edu/gmt/html/man/pscoast.html
  PLOTPROJECTION=m.75c

  #select the grid spacing (meters) of the final grid
  GRIDSPACING=250
 
  #preceding tag
  METANAME=tohoku_gebco08_ucsb3_250m

  #parameters for the calculation of the displacement
  DISPLCONFIG=data/subfaults/2011_03_11_tohoku_15sec.cfg

  #which subfaults should be tranformed
  #   -> source for lots of subfault-models http://earthquake.usgs.gov/
  DISPLSUBFAULTS=data/subfaults/2011_03_11_tohoku_ucsb3.txt