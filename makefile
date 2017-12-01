SHELL := /bin/bash
NIK := nikola #

# YOU MUST RUN pipenv shell before starting your work.

serve: build
	$(NIK) serve -b

build:
	$(NIK) build

auto_build:
	nikola auto -b

# ---------------------------------------------------------------------------- #
# To deploy call `make deploy` and give the shephbot's github account
# information. Even to push changes is done through deployment.
# ---------------------------------------------------------------------------- #
deploy:
	pipenv run $(NIK) github_deploy

setup:
	MACOSX_DEPLOYMENT_TARGET=10.11 pipenv install "Nikola[extras]"
	$(NIK) init root

new_page: # start_shell
	nikola new_page
