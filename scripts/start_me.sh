#!/bin/bash

export REGISTRY=http://localhost:5000
export USERNAME=dev_user
export PASSWORD=123456

source ~/.rvm/scripts/rvm

rvm use 2.5.5

cd ../docker_view/ && bin/rails s