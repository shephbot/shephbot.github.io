deploy:
	nikola github_deploy

build:
	pipenv run nikola build
	pipenv run nikola serve -b

setup:
	MACOSX_DEPLOYMENT_TARGET=10.11 pipenv install "Nikola[extras]"
	pipenv run nikola init root
