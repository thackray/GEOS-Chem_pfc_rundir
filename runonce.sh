## PBS directives 
## nb, PBS directives begin '#PBS'

#PBS -N ptest
#PBS -l nodes=1:ppn=16
#PBS -j oe
#PBS -q xlong
#PBS -M thackray@mit.edu



source /etc/profile.d/modules.csh
module add intel




   limit  stacksize     2097152 kbytes
   setenv KMP_STACKSIZE 209715200
   setenv OMP_NUM_THREADS 16


cd /net/fs03/d1/thackray/GEOS-Chem-rundirname/ # cd to your run dir
rm -f HEMCO.log
rm -f logrun # clear pre-existing log files 

#run #1
time ./geos > logrun # time job; pipe output to log file 




exit(0) # exit normally
