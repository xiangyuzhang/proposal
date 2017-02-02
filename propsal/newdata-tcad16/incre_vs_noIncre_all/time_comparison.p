set terminal postscript eps 'Times-Roman' 25 
set output  "incre_vs_baseline.eps" 
#set key left box
set style data lines
#set title "MUX4 Incre vs. non-incre CPU Time" offset 0, 0 
set xlabel "Incremental CPU time (s)"
set ylabel "Non-incremental CPU time (s)"
set yrange [1:1500]
set xrange [1:1500]
#set logscale xy
set ytics 500
set xtics 500
set grid x,y
set size square
a=1
set points 1.5 
y(x) = a * x
plot "incre_vs_noIncre_mux4_time.dat" using 1:2 title '' w points, 'incre_vs_noIncre_mux4_time.dat' using 3:4 t '' w points, 'incre_vs_noIncre_mux4_time.dat' using 5:6 t '' w points,'incre_vs_noIncre_mux4_time.dat' using 7:8 t '' w points,'incre_vs_noIncre_mux4_time.dat' using 9:10 t '' w points,'incre_vs_noIncre_mux4_time.dat' using 11:12 t '' w points,'incre_vs_noIncre_mux4_time.dat' using 13:14 t '' w points,'incre_vs_noIncre_mux4_time.dat' using 15:16 t '' w points,'incre_vs_noIncre_mux4_time.dat' using 17:18 t '' w points,'incre_vs_noIncre_mux4_time.dat' using 19:20 t '' w points,'incre_vs_noIncre_mux4_time.dat' using 21:22 t '' w points,'incre_vs_noIncre_mux4_time.dat' using 23:24 t '' w points,'incre_vs_noIncre_mux4_time.dat' using 25:26 t '' w points,'incre_vs_noIncre_mux4_time.dat' using 27:28 t '' w points,'incre_vs_noIncre_mux4_time.dat' using 29:30 t '' w points,'incre_vs_noIncre_mux4_time.dat' using 31:32 t '' w points,'incre_vs_noIncre_mux4_time.dat' using 33:34 t '' w points, y(x) title '' w lines,"incre_vs_noIncre_mux2_time.dat" using 1:2 title '' w points, 'incre_vs_noIncre_mux2_time.dat' using 3:4 t '' w points, 'incre_vs_noIncre_mux2_time.dat' using 5:6 t '' w points,'incre_vs_noIncre_mux2_time.dat' using 7:8 t '' w points,'incre_vs_noIncre_mux2_time.dat' using 9:10 t '' w points,'incre_vs_noIncre_mux2_time.dat' using 11:12 t '' w points,'incre_vs_noIncre_mux2_time.dat' using 13:14 t '' w points,'incre_vs_noIncre_mux2_time.dat' using 15:16 t '' w points,'incre_vs_noIncre_mux2_time.dat' using 17:18 t '' w points,'incre_vs_noIncre_mux2_time.dat' using 19:20 t '' w points,'incre_vs_noIncre_mux2_time.dat' using 21:22 t '' w points,'incre_vs_noIncre_mux2_time.dat' using 23:24 t '' w points,'incre_vs_noIncre_mux2_time.dat' using 25:26 t '' w points,'incre_vs_noIncre_mux2_time.dat' using 27:28 t '' w points,'incre_vs_noIncre_mux2_time.dat' using 29:30 t '' w points,'incre_vs_noIncre_mux2_time.dat' using 31:32 t '' w points,'incre_vs_noIncre_mux2_time.dat' using 33:34 t '' w points,'incre_vs_noIncre_mux2_time.dat' using 35:36 t '' w points, y(x) title '' w lines 
