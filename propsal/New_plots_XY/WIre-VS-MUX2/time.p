set terminal postscript eps 'Times-Roman,25' 
set output  "c5315-Base-Incre.eps" 
set key left box
set style data lines
#set title "c7552 incre vs. simp-incre" offset 0,-3 
set xlabel "Number of Camouflaged gates"
set ylabel "CPU Time (s)"
set size square
set key invert 
set xrange [0:357]
set ytics 0,1000,4000
set yrange [0:3500]
set size ratio 0.3
plot "time-incre.dat" using 1:($2+$3)/2:($2-$3)/2 notitle w yerrorbars linestyle 1 lw 2, "time-incre.dat" using 1:4 title "Incremental Avg" w lp ls 1 lw 2, "time-nonincre.dat" using 1:($2+$3)/2:($2-$3)/2 notitle w yerrorbars linestyle 2 lw 3, "time-nonincre.dat" using 1:4 title "Baseline Avg" w lp lw 3