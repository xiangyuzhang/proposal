set terminal postscript eps 'Times-Roman' 25 
set output  "tcad16-mux2-vector.eps" 
#set key left box
set style data lines
#set title "MUX2 Incre vs. non-incre vectors" offset 0, 0 
set xlabel "Number of vectors (Random camouflaged)"
set ylabel "Number of vectors (Corruptibility)"
set yrange [1:300]
set xrange [1:300]
set logscale xy
set size square
set grid x,y
set points 2.5 
a=1
y(x) = a * x
plot "random-vector-avg.dat" using ($1 * 2):($10 * 2) title '' w points, 'random-vector-avg.dat' using ($2 * 2):($11 * 2) t '' w points, 'random-vector-avg.dat' using ($3 * 2):($12 * 2) t '' w points,'random-vector-avg.dat' using ($4 * 2):($13 * 2) t '' w points,'random-vector-avg.dat' using ($5 * 2):($14 * 2) t '' w points,'random-vector-avg.dat' using ($6 * 2):($15 * 2) t '' w points,'random-vector-avg.dat' using ($7 * 2):($16 * 2) t '' w points,'random-vector-avg.dat' using ($8 * 2):($17 * 2) t '' w points,'random-vector-avg.dat' using ($9 * 2):($18 * 2) t '' w points, y(x) title '' w lines 
