# Building the documentation

## Pre-requisites

```bash
sudo apt-get install python3-sphinx
```

Ensure any post install steps are executed.

```bash
pip3 install sphinx-rtd-theme
pip3 install recommonmark
pip3 install sphinx_markdown_tables --user
pip3 install sphinxemoji --user
cd doc
sphinx-build -b html . builddir
```

## Building documentation

```bash
sphinx-build doc html
```

Open the documentation at `html/index.html`
