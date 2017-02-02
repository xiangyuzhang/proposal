set terminal postscript eps 'Times-Roman' 24
set output  "c1355_mux2_nocorr_vector.eps" 

# size configuration is below #
set key left 
set style data lines
set xlabel "Number of Camouflaged gates"
set ylabel "Number of Vectors"
set xrange[0:200]
set yrange[0:80]
#set ytics 0,20,80
set ytics ("0" 0, "    20" 20, "    40" 40, "    60" 60, "    80" 80)
set key samplen 2
set size 1,0.6
set label "C1355" at 105, 1000

set grid y

plot "c1355_mux2_nocorr_vector.dat" using 1:($2+$3)/2:($3-$2)/2 title "" w errorbars linestyle 1 lw 3, \
     "c1355_mux2_nocorr_vector.dat" using 1:4 title 'Random (x10)' w linespoints pt 0 lt 1 ps 1 lc -1 lw 5
