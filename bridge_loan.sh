#!/bin/sh
#
basedir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
srcdir="$basedir"/..

echo -e "\nApply a few code patches from the bridge loan repository ... "

set -x
cd $srcdir

#-------- copy bridge loan codes into their final locations

#gsi
loandir=rrfs_bridgeloan/gsi
destdir=gsi/src/gsi
cp $loandir/constants.f90 $destdir/constants.f90

#ufs_weather_model
loandir=rrfs_bridgeloan/ufs_weather_model/FV3
destdir=ufs_weather_model/FV3
cp $loandir/io/fv3atm_clm_lake_io.F90 $destdir/io/fv3atm_clm_lake_io.F90
cp $loandir/io/fv3atm_restart_io.F90 $destdir/io/fv3atm_restart_io.F90
cp $loandir/io/fv3atm_rrfs_sd_io.F90 $destdir/io/fv3atm_rrfs_sd_io.F90
cp $loandir/io/fv3atm_sfc_io.F90     $destdir/io/fv3atm_sfc_io.F90

cp $loandir/atmos_cubed_sphere/tools/fv_io.F90 $destdir/atmos_cubed_sphere/tools/fv_io.F90

cp $loandir/ccpp/suites/suite_FV3_HRRR_gf.xml $destdir/ccpp/suites/suite_FV3_HRRR_gf.xml
