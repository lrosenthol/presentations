#!/bin/bash

# add x for debugging
set -eu

# define the docker containers & file to be processed
PD_DOCKER_IMG=pandoc/core

#detect platform that we're running on...
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

# make sure we have an output dir
mkdir -p output

# this is the core routine to process one file...
convertOne() {
  DOC_NAME=$1
  echo "Converting ${DOC_NAME}"
	# make sure we have the docker images
	if [[ "$(docker images -q "${PD_DOCKER_IMG}" 2> /dev/null)" == "" ]]; then
		echo "Pulling Pandoc Docker image"
		docker pull "${PD_DOCKER_IMG}"
	fi

	curPath=`pwd`
	echo "curPath = ${curPath}"
	if [ "${machine}" == "MinGw" ]; then
		curPath=/`pwd`
	fi

	echo "Converting Markdown to Slidy"
	docker run --rm -v "${curPath}":"${curPath}" -w "${curPath}"/ "${PD_DOCKER_IMG}" \
		-t slidy -V slidy-url=../slidy --template slidy/template.html -s -o output/"${DOC_NAME}".html "${DOC_NAME}".md
}

if [ $# -eq 0 ]
  then
    echo "Converting all presentations"
    convertOne "XMP-Backgrounder"
fi
if [ $# -eq 1 ]
  then
    convertOne $1
fi
if [ $# -gt 1 ]
  then
    echo "Too many arguments."
    echo "usage: ./makePresentation.sh [document_name]"
    exit 1
fi