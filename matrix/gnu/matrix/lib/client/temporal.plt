#!/usr/bin/gnuplot -persist
set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp23/gnu/matrix/img/ppm25.png'
set view 70, 20, 1, 1
set samples 51, 51
set isosamples 20, 20
set style data lines
set xtics  norangelimit logscale autofreq 
set ytics  norangelimit logscale autofreq 
set ztics  norangelimit logscale autofreq 
set cbtics  norangelimit logscale autofreq 
set title "This has logarithmic scale" 
set xlabel "X axis" 
set xlabel  offset character -3, -2, 0 font "" textcolor lt -1 norotate
set xrange [ * : * ] noreverse writeback
set x2range [ * : * ] noreverse writeback
set ylabel "Y axis" 
set ylabel  offset character 3, -2, 0 font "" textcolor lt -1 rotate
set yrange [ * : * ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set zlabel "Z axis" 
set zlabel  offset character -5, 0, 0 font "" textcolor lt -1 norotate
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
set logscale z 10
set logscale y 10
set logscale x 10
set logscale cb 10
set logscale y2 10
set logscale x2 10
sinc(u,v) = sin(sqrt(u**2+v**2)) / sqrt(u**2+v**2)
NO_ANIMATION = 1
xx = 6.08888888888889
dx = 1.11
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
xmin = -4.99
xmax = 5
n = 10
zbase = -1
## Last datafile plotted: "$grid"
splot [x=1:15] [y=1:15] x**2+y**2
