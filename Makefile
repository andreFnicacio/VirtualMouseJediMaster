# Makefile

run:
	python3 app.py
create_venv:
	python3 -m venv pythonvenv
start_venv:
	. pythonvenv/bin/activate
install:
	pip install -r requirements.txt