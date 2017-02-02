set terminal postscript eps 'Times-Roman,25' 
set output  "c432-WIRE-MUX2.eps" 
set key left box
set style data lines
#set title "c7552 incre vs. simp-incre" offset 0,-3 
set xlabel "Number of Camouflaged gates"
set ylabel "CPU Time (s)"
set size 2,1
set key invert 
#set xrange [0:357]
#set ytics 0,1000,4000
#set yrange [0:3500]
#set size ratio 0.3

plot "atime_info_WIRE" using 1:2 title "DummyWire" w lp lw 1, "time-MAX-MIN.dat" using 1:($2 + $3)/2 title "MUX2" w lp lw 1