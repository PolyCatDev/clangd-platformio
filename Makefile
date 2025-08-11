build:
	pio run

run:
	pio run --target upload

clean:
	pio run --target clean

updatedb:
	rm -f compile_commands.json compile_commands.json.bak && python conv.py
