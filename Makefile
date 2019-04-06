#
# Makefile for jupyter
#
#-----------------------------------------------------------------------------------------
usage:
	@echo "make [install|run|web]"

install i:
	sudo apt install python3-pip python3-dev
	sudo apt install graphviz
	sudo apt install python3-notebook python3-jupyter-core python3-jupyter-console python3-jupyter-client
	sudo apt install python-numpy python-scipy python-matplotlib python-yaml
	sudo apt install libhdf5-serial-dev python-h5py
	sudo apt install python-opencv
	sudo pip3 install tensorflow keras pydot-ng matplotlib
	sudo pip3 install ipython[all] jupyter

run r:
	jupyter notebook
#-----------------------------------------------------------------------------------------
web w:
	@echo "make (web) [open]"

web-open wo:
	xdg-open http://localhost:8888
#-----------------------------------------------------------------------------------------
git g:
	@echo "make (git) [update|login|tag|status]"

git-update gu:
	#git remote remove go.mod sse.go
	git add .gitignore *.md Makefile 
	#git commit -m "initial commit"
	#git commit -m "add examples"
	git commit -m "update contents"
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

