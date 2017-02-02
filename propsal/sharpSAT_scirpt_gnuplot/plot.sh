#!/bin/bash
rm *.eps *.pdf
#gnuplot sharp-c1908.p
gnuplot sharp-c3540.p
gnuplot sharp-c5315.p
gnuplot sharp-c7552.p
gnuplot sharp-c2670.p
gnuplot histogram.p
#epspdf sharpSAT-c1908.eps
epspdf sharpSAT-c2670.eps
epspdf sharpSAT-c3540.eps
epspdf sharpSAT-c5315.eps
epspdf sharpSAT-c7552.eps
epspdf random-pi-po.eps 
#cp random-pi-po.pdf ../figures/
gnuplot c7552-clausesNum-10random.p
gnuplot c7552-varNum-10random.p
epspdf c7552-clausesNum-10random.eps
epspdf c7552-varNum-10random.eps
