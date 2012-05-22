
all: dist/simple.xml dist/embossed.xml

dist/%.xml: %
	./node_modules/.bin/carto $</project.mml > $@

node_modules:
	npm install carto millstone
