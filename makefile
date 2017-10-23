NIK := pipenv run nikola
deploy:
	$(NIK) github_deploy

build:
	$(NIK) build
	$(NIK) serve -b

setup:
	MACOSX_DEPLOYMENT_TARGET=10.11 pipenv install "Nikola[extras]"
	$(NIK) init root
