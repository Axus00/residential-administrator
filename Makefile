PYTHON = python
SOURCE = source
W_PATH_VENV = .venv/Scripts/activate
L_PATH_VENV = .venv/bin/activate
VENV_CLEAN = rm -rf .venv

dependences:
	pip list

install-dev:
	$(PYTHON) -m pip install -e .[dev]

test:
	pytest

venv-create:
	$(PYTHON) -m venv .venv

venv-clean:
	$(VENV_CLEAN)

# Comando para windows
w-venv-activate:
	$(SOURCE) $(W_PATH_VENV)

# Comando para liux
l-venv-activate:
	$(SOURCE) $(L_PATH_VENV)