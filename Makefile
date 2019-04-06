#
# Makefile for jupyter
#
#-----------------------------------------------------------------------------------------
usage:
	@echo "make [install|video|gst|test|web]"

install i:
	sudo apt install python3-notebook python3-jupyter-core python3-jupyter-core

play p:
	jupyter notebook
#-----------------------------------------------------------------------------------------
web w:
	@echo "make (web) [sample]"

web-sample ws:
	xdg-open http://4youngpadawans.com/gstreamer-real-life-examples/

clean:
	rm -f test.*
#-----------------------------------------------------------------------------------------
git g:
	@echo "make (git) [update|login|tag|status]"

git-update gu:
	git add .gitignore *.md Makefile 
	git commit -m "initial commit"
	#git remote remove go.mod sse.go
	#git commit -m "add examples"
	#git commit -m "update contents"
	git push

git-login gl:
	git config --global user.email "sikang99@gmail.com"
	git config --global user.name "Stoney Kang"
	git config --global push.default matching
	#git config --global push.default simple
	git config credential.helper store

git-tag gt:
	git tag v0.0.3
	git push --tags

git-status gs:
	git status
	git log --oneline -5
#-----------------------------------------------------------------------------------------

