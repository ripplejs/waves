default: build

components: component.json
	component install

clean:
	rm -fr build components dist

build: component
	component build --standalone waves --name waves
	-rm -r dist
	mkdir dist
	cp build/waves.js dist/waves.js && rm build/waves.js
	minify dist/waves.js dist/waves.min.js
	bfc ./dist/waves.js > ./dist/tmp.js && mv ./dist/tmp.js ./dist/waves.js

release: build
	VERSION=`node -p "require('./component.json').version"` && \
	git changelog --tag $$VERSION && \
	git release $$VERSION
	npm publish

.PHONY: clean release standalone
