all: plots

plots:  
	gnuplot c1355_mux2_nocorr_time.gp
	gnuplot c1355_mux2_nocorr_vector.gp
	epstopdf c1355_mux2_nocorr_time.eps
	epstopdf c1355_mux2_nocorr_vector.eps

	gnuplot c1355_mux2_corr_time.gp
	gnuplot c1355_mux2_corr_vector.gp
	epstopdf c1355_mux2_corr_time.eps
	epstopdf c1355_mux2_corr_vector.eps

	gnuplot c1355_mux4_nocorr_time.gp
	gnuplot c1355_mux4_nocorr_vector.gp
	epstopdf c1355_mux4_nocorr_time.eps
	epstopdf c1355_mux4_nocorr_vector.eps

	gnuplot c7552-coverage.gp
	epstopdf c7552-coverage.eps
	rm -f *.eps

clean:
	rm -f *.bak
	rm -f *~
	rm -f *.eps
	rm -f *.pdf
