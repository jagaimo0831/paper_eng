TARGET=root
 
# set below the directory in which your figs are placed
FIGDIR=./fig
 
DVI=$(addsuffix .dvi,$(TARGET))
PDF=$(addsuffix .pdf,$(TARGET))
 
# If you prefer to compile to pdf, replace $(DVI) below by $(PDF)
all: $(DVI)
 
pdf: $(PDF)
 
show: $(addsuffix .show,$(TARGET))
 
OS=$(shell uname | cut -d_ -f1)
 
ifneq ($(OS),CYGWIN)
PLATEX=platex --kanji=euc
JBIBTEX=pbibtex --kanji=euc
# DVIPDFM=dvipdfmx
DVIPDFM=dvipdf
endif
 
ifeq ($(OS),CYGWIN)
PLATEX=platex -kanji=utf8
JBIBTEX=pbibtex -kanji=utf8
# DVIPDFM=dvipdfmx
DVIPDFM=dvipdf
EXE=.exe
endif
 
%.dvi: %.tex
	(cd $(FIGDIR); ebb *.jpg *.JPG *.gif *.pdf)
	$(PLATEX) $*
	$(JBIBTEX) $*
	$(PLATEX) $*
	$(PLATEX) $*
	grep -a War $*.log | cat
 
%.show: %.dvi
ifeq ($(OS),CYGWIN)
	cygstart $<
else
	gnome-open $<
endif
 
%.pdf: %.dvi out2uni$(EXE)
	./out2uni$(EXE) -e $*
	$(PLATEX) $*
	pdfclose $@
	$(DVIPDFM) $<
	pdfopen $@
	grep -a War $*.log | cat
 
out2uni$(EXE): out2uni.c
	gcc -O $< -o $@
 
*.pdf: ./out2uni$(EXE)
 
$(DVI): reference.bib
 
clean:
	rm -f $(DVI)
	rm -f *.aux *.log *.blg *.bbl *.toc *.out
	rm -f $(PDF)
	rm -f out2uni$(EXE) *.out
	rm -f $(FIGDIR)/*.bb
 
ieeeconf.cls:
	wget -c http://ras.papercept.net/conferences/support/files/ieeeconf.zip
	unzip ieeeconf.zip ieeeconf/ieeeconf.cls
	mv ieeeconf/ieeeconf.cls .
	rmdir ieeeconf
	rm ieeeconf.zip
 
IEEEtran.bst:
	wget -c http://ras.papercept.net/conferences/support/files/IEEEtranBST.zip
	unzip IEEEtranBST.zip IEEEtran.bst
	rm IEEEtranBST.zip