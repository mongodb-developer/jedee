#!/bin/bash

cd .devcontainer/data

tar xvfz library.tgz

mongorestore --uri mongodb://localhost:27017/library --username admin --password mongodb  --drop --authenticationDatabase=admin library

cd ../..
