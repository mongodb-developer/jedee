#!/bin/bash

cd .devcontainer/data

# Import Library data WITHOUT embeddings

tar xvfz library.tgz

mongorestore --uri mongodb://localhost:27017/library --username admin --password mongodb  --drop --authenticationDatabase=admin library

cd ..

