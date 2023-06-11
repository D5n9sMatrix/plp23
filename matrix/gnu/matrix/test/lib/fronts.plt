#!/usr/bin/gnuplot -persist
set terminal pngcairo enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp23/gnu/matrix/img/ppm38.png'
set dummy u, v
set key bmargin center horizontal Right noreverse enhanced autotitle nobox
set parametric
set view 45, 50, 0.7, 1.4
set isosamples 50, 10
set hidden3d back offset 1 trianglepattern 3 undefined 1 altdiagonal bentover
set style data lines
set xyplane relative 0
set title "Parametric Hexagon" 
set urange [ -1.30000 : 1.30000 ] noreverse nowriteback
set vrange [ 0.00000 : 6.28319 ] noreverse nowriteback
set xrange [ * : * ] noreverse writeback
set x2range [ * : * ] noreverse writeback
set yrange [ * : * ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
NO_ANIMATION = 1
splot cos(v)**3*cos(u)**3,sin(v)**3*cos(u)**3,sin(u)**3
