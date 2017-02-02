set terminal postscript enhanced color 'Times-Roman,25' 
set output  "c5315-Base-Incre.eps" 
set key left 
set style data lines
set logscale y
set xlabel "Number of Control bits"
set ylabel "CPU Time (s)"
set size square
set key invert 
set key height 0.5
set key width 0.5
set key font "Times-Roman,15"
set key samplen 2
#set xrange [0:357]
#set ytics 0,1000,4000
#set yrange [0:3500]
set size ratio 0.3
plot  "DUM.txt" using ($1*2):4 title "Dummywire" with linespoints  lc 3, "DUM.txt"       using ($1*2):3 notitle with points  lc 3, "DUM.txt"       using ($1*2):2 notitle  with points  lc 3, "OBF.txt" using ($1*2):4 title "Obfuscell" with linespoints  lc 2, "OBF.txt"       using ($1*2):3 notitle with points  lc 2, "OBF.txt"       using ($1*2):2 notitle  with points  lc 2,"c432-time.log" using ($1*2):4 title "MUX2" with linespoints  lc 0, "c432-time.log" using ($1*2):2 notitle with points  lc 0, "c432-time.log" using ($1*2):3 notitle  with points  lc 0


