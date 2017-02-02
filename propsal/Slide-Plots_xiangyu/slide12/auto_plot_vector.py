__author__ = 'xiangyuzhang'
__author__ = 'xiangyuzhang'
from subprocess import call
import os

# create waiting list

raw_file_vector = ["c432-vector.log", "c499-vector.log", "c880-vector.log", "c1355-vector.log", "c1908-vector.log", "c2670-vector.log", "c3540-vector.log"
                 , "c5315-.log", "c7552-vector.log"]

# create output name
out_filename = ['c432', 'c499', 'c880', 'c1355', 'c1908', 'c2670', 'c3540', 'c5315', 'c7552']
out_frame_vector = "_Corrupt_Random_incre_vector.eps"
out_frame_iteration = "_Corrupt_Random_incre_vector.eps"


content = []
k = 0
z = 2
# use loop

for i in out_filename:
    sub = "'" + raw_file_vector[k] + "'"
    line_1_vector = "set output " + "'" + i + out_frame_vector + "'" +'\n'
    line_7_vector = "plot "  + "'corrupt_vector.dat'" + " using 1:" + str(z) + " " + "title 'Corrupt' w lp pt 0 ps 1 lc -1 lw 2, "+ sub + " using 1:($2+$3)/2:($2-$3)/2 notitle w errorbars linestyle 1, " + sub + " using 1:4 title 'Random AVR' w linespoints pt 0 ps 1 lc -1 lw 2\n"

    with open("sample", 'r') as infile: # here to get sample list
        income = infile.read()
        sample_lines = income.split('\n')

    content.append(sample_lines[0] + '\n')
    content.append(line_1_vector)
    content.append(sample_lines[2] + '\n')
    content.append(sample_lines[3] + '\n')
    content.append(sample_lines[4] + '\n')
    content.append(sample_lines[5] + '\n')
    content.append("set grid y\n")
    content.append("set yrange [0.1:10000]\n")
    content.append("set xrange [0:201]\n")

    content.append(sample_lines[6] + '\n')
    content.append(line_7_vector)

    for j in content:
        with open(("plot_script_" + i),'a') as outfile:
            outfile.write(j)

    Cmmd = 'gnuplot plot_script_' + i
    Proc = call(Cmmd, shell = True)

    # os.remove('plot_script')
    k = k + 1
    z = z + 1
    content = []
# call subprocess

