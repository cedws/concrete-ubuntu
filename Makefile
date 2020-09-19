SHELL := /bin/bash

all:
	DOCKER_BUILDKIT=1 docker build -o build --secret id=secret,src=secret .
	
