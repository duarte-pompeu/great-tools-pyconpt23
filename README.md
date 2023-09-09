# Tools to setup great Python projects (PyCon PT talk)

## Requirements

- [Poetry](https://python-poetry.org/docs/#installation)
- [Pyenv](https://github.com/pyenv/pyenv#installation)

## Installing

Run the following to configure `poetry`  and `pyenv`:

```bash
pyenv install 3.11.4
poetry config virtualenvs.in-project true
poetry env use ~/.pyenv/versions/3.11.4/bin/python
make install
```

## Running the application

```bash
make run
```

## Quality checks

``` bash
make format
make lint
make test
# or just...
make all
--

Based on [my-python-template](https://github.com/duarte-pompeu/my-python-template), created by [Duarte Pompeu](https://duartepompeu.com).