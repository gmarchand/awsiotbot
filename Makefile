.PHONY: help

help: ## help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

foo: ## foo
	@echo "foo"

install-linux: ## install package on linux device

install-pi: ## install package on raspberrypi device
	pip install pyaudio

install-macos: ## install package on macos
	sudo conda install virtualenv

install-python: ## install python package
	pip install -r ./requirements.txt

install-pyenv: ## install python virtualenv
	virtualenv --python=/usr/bin/python2.7 venv

pyenv-activate: ## activate virtualenv
	source venv/bin/activate

pyenv-deactivate: ## activate virtualenv
	. venv/bin/deactivate
