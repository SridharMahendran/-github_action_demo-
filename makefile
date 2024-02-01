#makefile

install:
		pip install --upgrade pip &&\
			pip install -r requirements.txt

format:
		black *.py

lint:
		oylint --disable+R,C script.py

test:
		python -m pytest tests/test_*.py

all : install link test format
