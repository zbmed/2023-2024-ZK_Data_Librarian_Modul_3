html:
	hugo -d ./public

serve:
	hugo server

clean:
	rm -rf docs
