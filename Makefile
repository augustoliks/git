venv:
	virtualenv venv
	venv/bin/pip3 install -r requirements.txt

serve:
	venv/bin/mkdocs serve 


