#!/usr/bin/gnuplot -persist
set terminal pngcairo enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp23/gnu/matrix/img/ppm36.png'
set dummy u, v
set key bmargin center horizontal Right noreverse enhanced autotitle nobox
set parametric
set view 45, 50, 1, 1
set isosamples 50, 10
set hidden3d back offset 1 trianglepattern 3 undefined 1 altdiagonal bentover
set style data lines
set ztics  norangelimit -1.00000,0.25,1.00000
set title "Parametric Torus" 
set urange [ 0.00000 : 6.28319 ] noreverse nowriteback
set vrange [ 0.00000 : 6.28319 ] noreverse nowriteback
set xrange [ * : * ] noreverse writeback
set x2range [ * : * ] noreverse writeback
set yrange [ * : * ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set zrange [ -1.00000 : 1.00000 ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
NO_ANIMATION = 1
splot (1-0.2*cos(v))*cos(u),(1-0.2*cos(v))*sin(u),0.2*sin(v)
