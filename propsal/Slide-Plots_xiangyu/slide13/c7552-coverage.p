set terminal postscript eps color 'Times-Roman' 30 
set output  "c7552-coverage.eps" 
set key right box
set style data lines
set title "" offset 3.5,-2.5 
set xlabel "Iteration"
set ylabel "Fraction of feasible\n programming vectors"
set style fill solid 0.5 
set log y
set yrange [0.0001:1]
set pointsize 3
set xrange [0:13]
set size 1.5, 1
set ytics (0.0001,0.001,0.01,0.1,1)
plot "c7552-coverage.dat" using 1:2 title 'Random-Hard' with linespoints ls 1 lw 3 pt 9, 'c7552-coverage.dat' using 1:3 title "Random-Simp" with linespoints ls 2 lw 3, "c7552-coverage.dat" using 1:4 title "Corruptibility" with linespoints ls 5 lw 3.5 lc rgb "black"
#"c7552-coverage.dat" using 1:2:3 t "Random" with filledcu lc rgb "gray0" 
