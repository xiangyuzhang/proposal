set terminal postscript eps color 'Times-Roman' 26 
set output  "c7552-coverage.eps" 
set key right box
set style data lines
set title "" offset 3.5,-2.5 
set xlabel "Iteration"
set ylabel "Fraction of programming vectors\nthat satisfy I/O pairs"
set size 1.3,1
set log y
set points 2.7
set yrange [0.0001:1]
set ytics (0.0001,0.001,0.01,0.1,1)
plot "c7552-coverage.dat" using 1:2 title 'Random (Max)' with linespoints ls 1 lw 4 pt 8, 'c7552-coverage.dat' using 1:3 title "Random (Min)" with linespoints ls 2 lw 4 pt 9, "c7552-coverage.dat" using 1:4 title "Corruptibility" with linespoints ls 5 lw 4 lc rgb "black" pt 5
