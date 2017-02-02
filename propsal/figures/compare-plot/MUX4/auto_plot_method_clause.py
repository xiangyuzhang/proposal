from subprocess import call
import os


def auto_plot(outfile_name, xlabel_name, ylabel_name, title_name, range_x, file_1, using_1, title_1, file_2, using_2, title_2):


    outfile = outfile_name
    xlabel = xlabel_name
    ylabel = ylabel_name
    title = title_name
    xrange = range_x
    file1 = file_1
    using1 = using_1
    title1 = title_1
    file2 = file_2
    using2 = using_2
    title2 = title_2



    content = []
    content1 = 'set term png\n'
    content2 = "set output" + " '" + outfile + "'\n"
    content3 =  "set xlabel" + " '" + xlabel + "'\n"
    content4 = "set ylabel" + " '" + ylabel + "'\n"
    content5 = "set title" + " '" + title + "'\n"
    content6 = "set xrange" + " " + xrange + '\n'
    content7 = "set ytics 0, 1000000, 3000000\n"
    content8 = 'plot' + " '" + file1 + "'" + ' using ' + using1 + ' w lp pt 0 ps 1 lc -1 title' + " '" + title1 + "'" + ',' + "'" + file2 + "' " + "using" + " " + using2 + " w lp pt 0 ps 1 lc 2 title " + "'" + title2 + "'\n"

    content.append(content1)
    content.append(content2)
    content.append(content3)
    content.append(content4)
    content.append(content5)
    content.append(content6)
    content.append(content7)
    content.append(content8)

    for i in content:
        with open('plot','a') as outfile:
            outfile.write(i)


    cmmd = 'gnuplot plot'
    Proc = call(cmmd, shell=True)

    # os.remove('plot')
