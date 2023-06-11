#!/usr/bin/gnuplot -persist
set terminal pngcairo enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp23/gnu/matrix/img/ppm16.png'
set samples 21, 21
set isosamples 11, 11
set style data lines
set xtics  norangelimit 
set xtics   ("low" -3.00000, "mid" 0.00000, "high" 3.00000)
set ytics  norangelimit -2.00000,0.5,2.00000
set ztics  norangelimit logscale autofreq 
set title "Surfaces with z log scale" 
set xlabel "X axis" 
set xlabel  offset character -3, -2, 0 font "" textcolor lt -1 norotate
set xrange [ -3.00000 : 3.00000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback
set ylabel "Y axis" 
set ylabel  offset character 3, -2, 0 font "" textcolor lt -1 rotate
set yrange [ -3.00000 : 3.00000 ] noreverse nowriteback
set y2range [ * : * ] noreverse writeback
set zlabel "Z axis" 
set zlabel  offset character -5, 0, 0 font "" textcolor lt -1 norotate
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
set logscale z 10
NO_ANIMATION = 1
## Last datafile plotted: "$grid"
splot x**2*y**2 + 2, x**2*y**4 + 2, x**4*y**2 + 2
