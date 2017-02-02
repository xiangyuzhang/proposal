set terminal postscript eps color 'Times-Roman,25' 
set output  "c2670.eps" 
set key left 
set style data lines
set logscale y
set xlabel "Number of Control bits"
set ylabel "CPU Time (s)"
set key invert 
set key height 0.5
set key width 0.5
set key font "Times-Roman,15"
set key samplen 2
#set xrange [0:357]
#set ytics 0,1000,4000
set yrange [1:1000]
set points 1.2
set grid x,y
set xtics 0,150
set size 1,0.7
plot  "DUM.txt" using ($1*2):4 title "Dummywire" with linespoints  lc 3, "DUM.txt"       using ($1*2):3 notitle with points  lc 3,  "OBF.txt" using ($1*2):4 title "Obfuscell" with linespoints  lc 2, "OBF.txt"       using ($1*2):3 notitle with points  lc 2, "c2670-time.log" using ($1*2):4 title "MUX2" with linespoints  lc 0,  "c2670-time.log" using ($1*2):3 notitle  with points  lc 0


