set terminal postscript eps enhanced color 'Times-Roman,22' 
set output  "sharpSAT-c3540.eps" 
set title "c3540" offset 0, -1
set key right 
set style data lines
set xlabel "Number of iterations"
set ylabel "Fraction of configurations \n remaining feasible"
set points 2
set size 1,0.8
#set xtics 0,300
#set yrange [1E12:1E26]
set yrange [1E-12:1]
set format y "%1.1E"
set grid x,y
set logscale y
#set ytics 0,10000000
#plot "c3540-sharpSAT.log" every 1 using 1:2 title  "Corruptibility" w linespoints lt 1 lw 5 pt 7 , "c3540-sharpSAT.log" every 1 using 1:3 title "Trial1" w linespoints lw 5 pt 5, "c3540-sharpSAT.log" every 1 using 1:4 title "Trial2" w linespoints lw 5 pt 5, "c3540-sharpSAT.log" every 1 using 1:5 title "Trial3" w linespoints lw 5 pt 5, "c3540-sharpSAT.log" every 1 using 1:6 title "Trial4" w linespoints lw 5 pt 5, "c3540-sharpSAT.log" every 1 using 1:3 title "Trial5" w linespoints lw 5 pt 5

plot "c3540-sharpSAT.log" every 1 using 1:3 title "Trial1" w linespoints lw 5 pt 5, "c3540-sharpSAT.log" every 1 using 1:4 title "Trial2" w linespoints lw 5 pt 5, "c3540-sharpSAT.log" every 1 using 1:5 title "Trial3" w linespoints lw 5 pt 5, "c3540-sharpSAT.log" every 1 using 1:6 title "Trial4" w linespoints lw 5 pt 5, "c3540-sharpSAT.log" every 1 using 1:7 title "Trial5" w linespoints lw 5 pt 5
