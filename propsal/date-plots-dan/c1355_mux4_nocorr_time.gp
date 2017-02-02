set terminal postscript eps 'Times-Roman' 20
set output  "c1355_mux4_nocorr_time.eps" 

# configurate size below

set key center at 35, 100
set style data lines
set xlabel "Number of Camouflaged gates"
set ylabel "CPU Time (s)"
set xrange[0:200]
set logscale y
set yrange[0.1:10000]
set key samplen 2
set key width 0.1
set grid y
set size 1,0.6
set label "C1355" at 105, 300

plot  "c1355_mux4_nocorr_time.dat" using 1:($8+$9)/2:($9-$8)/2 title "" w errorbars linestyle 1 lw 3, \
      "c1355_mux4_nocorr_time.dat" using 1:($8+$9)/2 title 'Random' w linespoints pt 0 lt 1 ps 1 lc -1 lw 5
