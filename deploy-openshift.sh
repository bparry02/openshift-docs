#!/bin/bash

GIT_REPO=https://github.com/bparry02/openshift-docs.git
GIT_REF=master

oc process -f asciibinder-template.yml -p NAME=docs \
    -p SOURCE_REPOSITORY_URL=${GIT_REPO} \
    -p SOURCE_REPOSITORY_REF=${GIT_REF} \
    -p MEMORY_LIMIT=512Mi -p MEMORY_REQUEST=256Mi \
    | oc create -f -

