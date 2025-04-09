# JEDEE: Jupyter EDEE

This repo is an implementation of the Enterprise Development Environment Emulator that we use at MongoDB to provide a quick and simple way to start coding against a MongoDB database.

Instead of creating a new MongoDB Atlas Cluster (which BTW is a good idea as those are [Free Forever](https://account.mongodb.com/account/register)), then importing some data, then setup a develope environments and finally write some code with JEDEE you start a new Github Codespace, wait a few minutes and you can start writing code in a Jupyter Notebook.

## Code examples

We aim to have the same set of examples for every different language. Right now you have:

- Java
- Python
- Javascript

## Containers

If you clone this repo and run it locally (using VS Code) or start a new Codespace, you'll start two containers:

- an Atlas Local Cluster, that has a MongoDB database server with the Library dataset imported (see `.devcontainer/import.sh`). 
- a Linux Ubuntu container with some development tools:
    - Java (included in the base image)
    - Python (installed through `.devcontainer/setup.sh`)
    - Deno (installed through `.devcontainer/setup.sh`)
    - Jupyter notebook server (installed through `.devcontainer/setup.sh`)
    - The MongoDB database tools (installed through `.devcontainer/install-mongodb-db-tools.sh`)