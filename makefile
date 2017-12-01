SHELL := /bin/bash
NIK := nikola # pipenv run

# start_shell:
# 	pipenv shell

serve: build
	$(NIK) serve -b

build:
	$(NIK) build

auto_build:
	nikola auto -b

deploy:
	$(NIK) github_deploy

setup:
	MACOSX_DEPLOYMENT_TARGET=10.11 pipenv install "Nikola[extras]"
	$(NIK) init root

new_page: # start_shell
	nikola new_page
