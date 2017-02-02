set terminal postscript eps enhanced color 'Times-Roman,20' 
set output  "c7552-varNum-10random.eps" 
#set title "c1908" offset 0, -1
set key bottom right 
set style data lines
set ylabel "Number of non-resolved variables"
set xlabel "Iteration"
#set points 2
#set size 1,0.8
#set xtics 0,300
set format y "%1.1E"
set yrange [0:400000]
set grid x,y
#set logscale y
#set ytics 0,10000000
plot for [n=2:11]"c7552-varNum-10random.dat" every 1 using 1:n title "Trial ".(n-1)  w linespoints lw 1.2 

