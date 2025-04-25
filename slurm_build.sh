#!/usr/bin/env bash
set -x

SLURM_VER=23.02.7
PMIX_VER='5.0.2'
ROCK_VER='8.9'

NAME="building-slurm"
DIR="$(pwd)/rpmbuild"

## Validate DIR
if [ -d "${DIR}" ]; then
	echo "Diretorio: ${DIR} existe"
else
	mkdir ${DIR}
fi

## Exec BUILD
podman build -t ${NAME} \
       	-f ./ContainerFile.RockLinux \
       	-v ${DIR}:/root/rpmbuild \
       --build-arg SLURM_VER="${SLURM_VER}" \
       --build-arg PMIX_VER="${PMIX_VER}" \
       --build-arg ROCK_VER="${ROCK_VER}"  .

## Delete image after build
podman images -f reference=${NAME} --format "{{.ID}}" | xargs podman rmi -f
