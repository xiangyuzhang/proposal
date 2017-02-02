set terminal postscript eps 'Times-Roman' 23
set size 0.9,0.7 #x,y
set output  "c7552-coverage.eps" 
#set key left box
set key right box
set style data lines
#set title "" offset 3.5,-2.5 
set xlabel "Iteration"
#set ylabel "Fraction of programming vectors\nthat satisfy I/O pairs"
set ylabel "Frac. of feasible P vectors"
set style fill solid 0.5 
set log y
set yrange [0.0001:1]
set ytics (0.0001,0.001,0.01,0.1,1)
plot "c7552-coverage.dat" using 1:2 title '' with linespoints ls 1, \
     "c7552-coverage.dat" using 1:3 title "" with linespoints ls 2,  \
     "c7552-coverage.dat" using 1:2:3 t "Random (x10)" with filledcu lc rgb "gray0", \
     "c7552-coverage.dat" using 1:4 title "Corruptibility" with linespoints ls 1 lw 4.5 pt 7 ps 2
