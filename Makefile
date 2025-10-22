# =========================================
# Makefile for compiling a LaTeX thesis
# =========================================

# ---- SETTINGS ----
FILE     = main        # Default filename (no .tex)
LATEX    = pdflatex -interaction=nonstopmode
BIBTEX   = biber
MAKEIDX  = makeindex
NOMENCL  = nomencl.ist

# ---- TARGETS ----
.PHONY: all clean test

# Default target: compile the thesis
all:
	@echo "Compiling your PhD Thesis... please wait..."
	$(LATEX)  $(FILE).tex
	$(BIBTEX) $(FILE)
	$(LATEX)  $(FILE).tex
	$(LATEX)  $(FILE).tex		
	$(BIBTEX) $(FILE)
	$(LATEX)  $(FILE).tex
	$(LATEX)  $(FILE).tex		
	@echo "✅ Compilation complete: $(FILE).pdf"

# Clean up intermediate and temporary files
clean:
	@echo "🧹 Cleaning up..."
	rm -f *~ *#*
	rm -f **/*.aux *.aux *.bbl *.blg *.d *.fls *.ilg *.ind *.toc* *.lot* *.lof*
	rm -f *.log *.idx *.out* *.nlo *.nls *.fdb_latexmk *.run.xml *.synctex.gz *.bcf
	rm -f $(FILE).pdf $(FILE).ps $(FILE).dvi
	@echo "✅ Cleaning complete!"

# Test build (one-pass LaTeX only)
test:
	@echo "🔍 Running test compile..."
	$(LATEX) $(FILE).tex
	@echo "✅ Test compile complete."
