html:
	hugo -d ./docs

serve:
	hugo server

clean:
	rm -rf docs
