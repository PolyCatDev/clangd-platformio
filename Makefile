build:
	pio run

run:
	pio run --target upload

updatedb:
	pio init --ide vim && pio run -t compiledb
