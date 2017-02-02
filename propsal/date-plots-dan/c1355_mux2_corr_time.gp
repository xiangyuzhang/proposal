set terminal postscript eps 'Times-Roman' 24
set output  "c1355_mux2_corr_time.eps" 
set key left
set style data lines
set xlabel "Number of Camouflaged gates"
set ylabel "CPU Time (s)"
set xrange[0:200]
set logscale y
set yrange[0.1:10000]
set key samplen 2
set grid y
set size 1,0.6
set label "C1355" at 105, 1000

plot "c1355_mux2_nocorr_time.dat" using 1:($2+$3)/2:($3-$2)/2 title "" w errorbars linestyle 1 lw 3, \
     "c1355_mux2_nocorr_time.dat" using 1:4 title 'Random (x10)' w linespoints pt 0 lt 1 ps 1 lc -1 lw 5, \
     "c1355_mux2_corr.dat" using 1:3 title 'Corruptbility' w linespoints pt 0 ps 3 lc 1 lt 1 lw 7