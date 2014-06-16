LATEXWATCHER := ./node_modules/.bin/latex-watcher
COMMANDS := pdflatex,bibtex,pdflatex,pdflatex

all: once

$(LATEXWATCHER):
	npm install

once: $(LATEXWATCHER)
	@$(LATEXWATCHER) -c $(COMMANDS) -t main -b main --once

watch: $(LATEXWATCHER)
	@$(LATEXWATCHER) -c $(COMMANDS) -t main -b main

clean: $(LATEXWATCHER)
	$(LATEXWATCHER) -c cleanup -t main -b main --once