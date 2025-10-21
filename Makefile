clean: 
	rm -rf $${HOME}/.local/bin/shell-color-scripts

install: clean
	chmod 700 colorscript.sh
	mkdir -p $${HOME}/.local/bin/shell-color-scripts/colorscripts
	cp -rf colorscripts/* $${HOME}/.local/bin/shell-color-scripts/colorscripts
	cp colorscript.sh $${HOME}/.local/bin/colorscript
	cp zsh_completion/_colorscript $${HOME}/.local/share/zsh/completions

uninstall:
	rm -rf $${HOME}/.local/bin/shell-color-scripts
	rm -f $${HOME}/.local/bin/colorscript
	rm $${HOME}/.local/share/zsh/completions/_colorscript

