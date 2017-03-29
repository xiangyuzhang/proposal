import sys
import re


def find_data(line):
    res = re.search(r'([0-9]*)\s*([0-9]*)\s*[0-9]*\.*[0-9]*\s*([0-9]*\.[0-9]*)', line).groups()
    print res
    return res


def cal_ratio(mux, dum):  # number of function/total
    mux_bit = float(pow(3, mux))
    dum_bit = float(pow(4, dum))
    total = float(mux_bit + dum_bit)
    print "MUX = ", mux_bit
    print "DUM = ", dum_bit
    return float(round(mux_bit/total, 7))


#############################
input = sys.argv[1]
output = sys.argv[2]
#############################
with open(input, "r") as infile:
    content = infile.read().split("\n")

for index in range(0, len(content)):
    line = content[index]
    if ("#" not in line) and (line != ""):
        res = find_data(line)
        mux = int(res[0])
        dum = int(res[1])
    	ratio = float(cal_ratio(mux, dum))
    	content[index] += ("\t\t" + str(ratio))
    elif "#" in line:
    	content[index] += ("\t\t#number of function/total")


with open(output, "w") as outfile:
	for line in content:
		outfile.write(line + "\n")
