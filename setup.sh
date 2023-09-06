#!/usr/bin/env bash
set -ex

# default values can be overriden in your shell
# before running the script
PYENV_ROOT=${PYENV_ROOT:-~/.pyenv}

# -i is just a dummy flag so we don't print the string twice
read -i "Are you happy with these values? Yes: Enter / No: Ctl-C"

# not needed if we already have pyproject.toml
# poetry init --python $PYTHON_VERSION --no-interaction

# set up dependencies using poetry and pyenv
poetry config virtualenvs.in-project true
pyenv install "3.11.4" || true
poetry env use "$PYENV_ROOT"/versions/"3.11.4"/bin/python
poetry install

# create example configuration file
cp env/example.env env/app.env

# run the example application
PYTHONPATH=. make run