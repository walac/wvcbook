OUTPUT_FILENAME = sunspot.pdf
INPUT_FILENAME = sunspot

IMAGES := $(shell ls img/*.*)

$(OUTPUT_FILENAME): $(IMAGES) $(INPUT_FILENAME).tex $(INPUT_FILENAME).bib omnibook4b.cls
	latex $(INPUT_FILENAME)
	bibtex $(INPUT_FILENAME)
	latex $(INPUT_FILENAME)
	latex $(INPUT_FILENAME)
	dvipdf $(INPUT_FILENAME).dvi $(OUTPUT_FILENAME)

clean:
	rm -f $(INPUT_FILENAME).dvi \
	      $(INPUT_FILENAME).aux \
	      $(INPUT_FILENAME).bbl \
	      $(INPUT_FILENAME).blg \
	      $(INPUT_FILENAME).log \
	      $(INPUT_FILENAME).out \
	      $(INPUT_FILENAME).toc

distclean: clean
	rm -f $(OUTPUT_FILENAME)

.PHONY: clean distclean
