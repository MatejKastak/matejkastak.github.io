BROWSER=brave
PORT=4000
open:
	sleep 1; $(BROWSER) http://localhost:$(PORT) >/dev/null 2>&1 &
	
watch: open
	docker run --rm -it -v $(PWD):/srv/jekyll -p $(PORT):4000 jekyll/builder jekyll serve
