html:
	hugo -d ./public

serve:
	hugo server

clean:
	rm -rf docs

pull_submodule:
   # Do once initially: git submodule update --init --recursive
	git pull --recurse-submodules
