#ITY proj5 makefile
#Martina Zlevorova (xzlevo00)
#============================
login=xzlevo00
file=proj5
#----------------------------
in_file = $(file).tex
dvi_file = $(file).dvi
ps_file = $(file).ps
pack_file = $(login)-fit.zip
#----------------------------
build:
	latex $(in_file)
	latex $(in_file)
	dvips $(dvi_file)
	ps2pdf $(ps_file)
pack: cl
	zip $(pack_file) $(in_file) ISort.eps Makefile
cl:
	rm -fr $(pack_file)
clean:
	rm $(file).aux $(dvi_file) $(file).log $(file).out $(ps_file) $(file).nav $(file).snm  $(file).toc
