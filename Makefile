
#################################################################################
# GLOBALS                                                                       #
#################################################################################

BUCKET = scarlett-projects

#################################################################################
# PROJECT COMMANDS
#################################################################################

## Run bash prompt in container
bash:
	docker-compose run scarlett-projects bash

## Run jupyter notebook server on 127.0.0.1
jupyter:
	docker-compose run --service-ports scarlett-projects jupyter notebook --no-browser --ip=* --allow-root

## Create folder and subfolders by giving foldername=
folder:
	mkdir -p project/$(foldername)/{data/{external,interim,processed,raw},notebooks}
