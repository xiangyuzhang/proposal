#!/bin/bash
gnuplot time_mux2.p
gnuplot vector_mux2.p
epspdf tcad16-mux2-time.eps
epspdf tcad16-mux2-vector.eps
