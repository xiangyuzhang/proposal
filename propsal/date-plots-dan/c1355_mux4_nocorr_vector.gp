set terminal postscript eps 'Times-Roman' 20
set output "c1355_mux4_nocorr_vector.eps"

# size configuration is below #

set key left
set style data lines
set xlabel "Number of Camouflaged gates"
set ylabel "Number of Vectors"
set xrange[0:200]
set key samplen 2
set size 1,0.6
set label "C1355" at 105, 600

set grid y


plot "c1355_mux4_nocorr_vector.dat" using 1:($8+$9)/2:($9-$8)/2 title "" w errorbars linestyle 1 lw 3, \
     "c1355_mux4_nocorr_vector.dat" using 1:($8+$9)/2 title 'Random' w linespoints pt 0 ps 1 lt 1 lc -1 lw 5