
JSON = $(wildcard lib/*/*.json)
SRC  = $(wildcard lib/*/*.js)
STYL = $(wildcard lib/*/*.styl)
HTML = $(wildcard lib/*/*.html)
CSS  = $(STYL:.styl=.css)
TEMPLATES = $(HTML:.html=.js)

build: components $(SRC) $(CSS) $(TEMPLATES)
	@echo "Building..."
	@component build

%.js: %.html
	@component convert $<

%.css: %.styl
	@./node_modules/.bin/styl -w < $< > $@

modules: node_modules components

node_modules: package.json
	@npm i --dev

components: $(JSON)
	@component install

clean:
	rm -fr node_modules build components $(CSS) $(TEMPLATES)

.PHONY: clean
