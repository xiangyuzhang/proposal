set terminal postscript eps color 'Times-Roman,25' 
set output  "c3540.eps" 
set title 'c3540' offset 0,-1
set key left 
set style data lines
set logscale y
set xlabel "Number of configurations"
set ylabel "CPU Time (s)"
set key invert 
set key height 0.5
set key width 0.5
#set key font "Times-Roman,15"
set key samplen 2
#set xrange [0:357]
#set ytics 0,1000,4000
set yrange [1:1000]
set points 1.2
set grid x,y
set xtics ("0" 0, "2^{100}" 100, "2^{200}" 200, "2^{300}" 300, "2^{400}" 400)
set xrange [0:400]
set size 1,0.7
plot  "DUM.txt" using ($1*2):22 title "[4]" with linespoints  lt 1 lw 2.3 lc 3,  "OBF.txt" using ($1*2):22 title "[3]" with linespoints  lw 2.3 lc 2,  "c3540-time.log" using ($1*2):4 title "[2]" with linespoints  lw 2.3 lc 0


