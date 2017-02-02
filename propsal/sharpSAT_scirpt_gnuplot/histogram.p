set terminal postscript color eps 'Times-Roman' 25 
set output  "random-pi-po.eps" 
set key left box
set style fill solid border
set style histogram clustered gap 1 title textcolor lt -1
set ylabel "Fraction of configurations \n remaining feasible"
set datafile missing '-'
set style data histograms
set xtics rotate out
set style line 1 lt 1 lc rgb "green"
set style line 2 lt 1 lc rgb "red"
set size 1.1,1
set ytics 0.05
set xtics border in scale 0,0 nomirror rotate by -45  autojustify
#set logscale y
plot for [n=2:3] "random-pi-po.dat" using n:xtic(1) t columnheader lc n*2
