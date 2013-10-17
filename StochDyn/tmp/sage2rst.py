import sys, re

pattern = re.compile('\d')

if len(sys.argv) == 3:
  f = open(sys.argv[1], 'r')
  o = open(sys.argv[2], 'w')
elif len(sys.argv) == 2:
  f = open(sys.argv[1], 'r')
  o = open("outfile.s2r", 'w')
else:
  exit()

WHOLETXT = ""

i, counter = 0, 0
eqnlabels, newlabels = [], []
for l in f.readlines():
  i += 1
  if l[0:2] == "$$":
    counter += 1
    newlabel = 'eqn%d'%counter
    if "quad" in l:
      try:
	buf = l[::-1]
	leftidx = buf.index('(')
	rightidx = buf.index(')')
	oldlabel = "("+l[-leftidx:-rightidx-1]+")"
	if pattern.match(oldlabel[1]) != None and oldlabel[1] != "0":
	  eqnlabels.append(oldlabel)
	  newlabels.append(newlabel)
          l = l.replace(oldlabel,"")
	  #print oldlabel
      except:
	pass
    
    WHOLETXT += ".. MATH::\n    :label: %s\n\n"%newlabel
    WHOLETXT += "    " + l[2:-3] + "\n\n"
    #o.write(l.replace("$$","ALA"))
    #o.write("Title%d="%(101-i)+l.split('/')[-1][:-5]+"\n")
  elif l[:8] == 'SAGECELL':
    WHOLETXT += '.. sagecellserver::\n'
    WHOLETXT += '    :is_verbatim: True\n\n\n'
    WHOLETXT += '.. end of input\n'
  else:
    words = l.split('$')
    lw = len(words)
   
    if lw == 1:
      WHOLETXT += l
    else:
      text = ""
      for k in range(lw-1):
        if k%2 == 0:
          text += words[k] + ":math:`" 
        else:
	  text += words[k] + "`"
      text += words[lw-1]
      WHOLETXT += text

dlabels = dict(zip(eqnlabels,newlabels))
lines = WHOLETXT.split('\n')
WHOLETXT = ""
for l in lines:
  l = l.replace('\quad \quad \quad','\qquad')
  for elabel in eqnlabels:
    if elabel in l:      
      l = l.replace(':math:`%s`'%elabel,':eq:`%s`'%dlabels[elabel])
  WHOLETXT += l+"\n"

lines = WHOLETXT.split('\n')
nlines = []
for l in lines:
  for elabel in eqnlabels:
    if elabel in l:      
      nlines.append(lines.index(l)+1)

if len(nlines) > 0:
  print "jest jeszcze %d nie zmienionych miejsc podejrzanych o reczne referencjew liniach: %s"%(len(nlines),nlines)
  ask = raw_input("pokazac linie? [t/N] ")
  if ask == 't' or ask == 'T':
    print dlabels
    for n in nlines:
      print lines[n-1]


o.write(WHOLETXT)			
f.close()
o.close()
