#!/usr/bin/gnuplot -persist
set terminal pngcairo enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp23/gnu/matrix/img/ppm22.png'
set dummy u, v
set label 1 "increasing v" at 6.00000, 0.00000, -1.00000 left norotate back nopoint
set label 2 "u=0" at 5.00000, 6.50000, -1.00000 left norotate back nopoint
set label 3 "u=1" at 5.00000, 6.50000, 0.100248 left norotate back nopoint
set arrow 1 from 5.00000, -5.00000, -1.20000 to 5.00000, 5.00000, -1.20000 head back nofilled lt black linewidth 1.000 dashtype solid
set arrow 2 from 5.00000, 6.00000, -1.00000 to 5.00000, 5.00000, -1.00000 head back nofilled lt black linewidth 1.000 dashtype solid
set arrow 3 from 5.00000, 6.00000, 0.100248 to 5.00000, 5.00000, 0.100248 head back nofilled lt black linewidth 1.000 dashtype solid
set parametric
set view 70, 20, 1, 1
set samples 51, 51
set isosamples 2, 33
set hidden3d back offset 0 trianglepattern 3 undefined 1 altdiagonal bentover
set style data lines
set ztics  norangelimit -1.00000,0.25,1.00000
set title "fence plot constructed with separate parametric surfaces" 
set xlabel "X axis" 
set xlabel  offset character -3, -2, 0 font "" textcolor lt -1 norotate
set xrange [ -5.00000 : 5.00000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback
set ylabel "Y axis" 
set ylabel  offset character 3, -2, 0 font "" textcolor lt -1 rotate
set yrange [ -5.00000 : 5.00000 ] noreverse nowriteback
set y2range [ * : * ] noreverse writeback
set zlabel "Z axis" 
set zlabel  offset character -5, 0, 0 font "" textcolor lt -1 norotate
set zrange [ -1.00000 : 1.00000 ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
sinc(u,v) = sin(sqrt(u**2+v**2)) / sqrt(u**2+v**2)
NO_ANIMATION = 1
xx = 6.08888888888889
dx = 1.10888888888889
x0 = -5
x1 = -3.89111111111111
x2 = -2.78222222222222
x3 = -1.67333333333333
x4 = -0.564444444444444
x5 = 0.544444444444445
x6 = 1.65333333333333
x7 = 2.76222222222222
x8 = 3.87111111111111
x9 = 4.98
## Last datafile plotted: "$grid"
splot [u=0:1][v=-4.99:4.99] 	x0, v, (u<0.5) ? -1 : sinc(x0,v) notitle, 	x1, v, (u<0.5) ? -1 : sinc(x1,v) notitle, 	x2, v, (u<0.5) ? -1 : sinc(x2,v) notitle, 	x3, v, (u<0.5) ? -1 : sinc(x3,v) notitle, 	x4, v, (u<0.5) ? -1 : sinc(x4,v) notitle, 	x5, v, (u<0.5) ? -1 : sinc(x5,v) notitle, 	x6, v, (u<0.5) ? -1 : sinc(x6,v) notitle, 	x7, v, (u<0.5) ? -1 : sinc(x7,v) notitle, 	x8, v, (u<0.5) ? -1 : sinc(x8,v) notitle, 	x9, v, (u<0.5) ? -1 : sinc(x9,v) notitle
