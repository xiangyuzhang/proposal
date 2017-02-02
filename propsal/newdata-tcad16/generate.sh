#!/bin/bash
cd c432
gnuplot time.p
cd ../c499
gnuplot time.p
cd ../c880
gnuplot time.p
cd ../c1355
gnuplot time.p
cd ../c1908
gnuplot time.p
cd ../c2670
gnuplot time.p
cd ../c3540
gnuplot time.p
cd ../c5315
gnuplot time.p
cd ../c7552
gnuplot time.p
cd ..
cd clauses_runtime_comparison
gnuplot plot_clause
gnuplot plot_runtime
cp c7552-Base-Incre-clause.eps ../
cp c7552-Base-Incre-runtime.eps ../
cd ..
cp c432/c432.eps .
cp c499/c499.eps .
cp c880/c880.eps .
cp c1355/c1355.eps .
cp c1908/c1908.eps .
cp c2670/c2670.eps .
cp c3540/c3540.eps .
cp c5315/c5315.eps .
cp c7552/c7552.eps .
./epspdf.sh
