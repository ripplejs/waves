build: components index.js
	component build --dev

components: node_modules component.json
	component install --dev

clean:
	rm -fr build components dist

standalone: node_modules
	component build --standalone waves --name waves
	-rm -r dist
	mkdir dist
	cp build/waves.js dist/waves.js && rm build/waves.js
	@${MINIFY} dist/waves.js dist/waves.min.js
	bfc ./dist/waves.js > ./dist/tmp.js && mv ./dist/tmp.js ./dist/waves.js

release: test standalone
	VERSION=`node -p "require('./component.json').version"` && \
	git changelog --tag $$VERSION && \
	git release $$VERSION
	npm publish

.PHONY: clean release standalone
