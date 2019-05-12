#!/usr/bin/env python3
  
def generate_filler_from_wat(name, header_filename, footer_filename):
  name = name.split(".")[0]

  # first the name at top of the filler, then the "header"
  f_filler = open(name+"Filler.yml",'w')
  f_filler.write("# Test WRC20, see https://gist.github.com/axic/16158c5c88fbc7b1d09dfa8c658bc363\n")
  f_filler.write("---\n")
  f_filler.write(name+":\n")
  f_header = open(header_filename, 'r')
  for line in f_header:
    f_filler.write(line)

  # next the wat file
  f_wat = open(name+".wat", 'r')
  for line in f_wat:
    #f_filler.write("        "+line)
    f_filler.write("                "+line)

  # finally footer
  f_footer = open(footer_filename, 'r')
  for line in f_footer:
    f_filler.write(line)


if __name__ == "__main__":
    import sys
    generate_filler_from_wat(sys.argv[1], sys.argv[2], sys.argv[3])
