set terminal postscript eps 'Times-Roman' 25 
set output  "tcad16-mux2-time.eps" 
#set key left box
set style data lines
#set title "MUX2 Incre vs. non-incre CPU Time" offset 0, 0 
set xlabel "Deobfuscation CPU time (Random camouflaged)"
set ylabel "Deobfuscation CPU time (Corruptibility)"
set yrange [1:1000]
set xrange [1:1000]
set logscale xy
set size square
set grid x,y
set points 2.5
a=1
y(x) = a * x
plot "random-time-avg.dat" using 1:10 title '' w points, 'random-time-avg.dat' using 2:11 t '' w points, 'random-time-avg.dat' using 3:12 t '' w points,'random-time-avg.dat' using 4:13 t '' w points,'random-time-avg.dat' using 5:14 t '' w points,'random-time-avg.dat' using 6:15 t '' w points,'random-time-avg.dat' using 7:16 t '' w points,'random-time-avg.dat' using 8:17 t '' w points,'random-time-avg.dat' using 9:18 t '' w points, y(x) title '' w lines 
