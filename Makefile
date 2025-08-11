build:
	pio run

run:
	pio run --target upload

clean:
	pio run --target clean

updatedb:
	pio init --ide vim && pio run -t compiledb
