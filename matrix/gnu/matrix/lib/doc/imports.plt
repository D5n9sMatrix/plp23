#!/usr/bin/gnuplot -persist
set terminal pngcairo enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp23/gnu/matrix/img/ppm19.png'
set dummy u, v
set label 1 "This is equal to 1" at 0.00000, 3.20000, 1.00000 left norotate back nopoint
set arrow 1 from 0.00000, 3.00000, 1.00000 to 0.00000, 0.00000, 1.00000 head back nofilled linewidth 1.000 dashtype solid
set samples 51, 51
set isosamples 21, 21
set style data lines
set title "Sinc function" 
set xlabel "X axis" 
set xlabel  offset character -3, -2, 0 font "" textcolor lt -1 norotate
set xrange [ -1.00000 : 1.00000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback
set ylabel "Y axis" 
set ylabel  offset character 3, -2, 0 font "" textcolor lt -1 rotate
set yrange [ -1.00000 : 1.00000 ] noreverse nowriteback
set y2range [ * : * ] noreverse writeback
set zlabel "Z axis" 
set zlabel  offset character -5, 0, 0 font "" textcolor lt -1 norotate
set zrange [ -1.00000 : 1.00000 ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
sinc(u,v) = sin(sqrt(u**2+v**2)) / sqrt(u**2+v**2)
NO_ANIMATION = 1
## Last datafile plotted: "$grid"
splot [-5:5.01] [-5:5.01] sinc(u,v)
