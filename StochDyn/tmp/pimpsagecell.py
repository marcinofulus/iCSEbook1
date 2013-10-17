import sys, re

pattern = re.compile('\d')

if len(sys.argv) == 3:
  f = open(sys.argv[1], 'r')
  o = open(sys.argv[2], 'w')
elif len(sys.argv) == 2:
  f = open(sys.argv[1], 'r')
  o = open("outfile.pimp", 'w')
else:
  exit()

WHOLETXT = ""

for l in f.readlines():
  if l[0] == "" or l[0] == " ":
    l = "    ..." + l
  else:
    l = "    sage: " + l
  o.write(l)			

f.close()
o.close()
