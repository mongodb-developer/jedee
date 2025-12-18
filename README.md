[![Open JEDEE in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/mongodb-developer/jedee)


# JEDEE: Jupyter EDEE

JEDEE is a __set of coding examples that will help you learn how to use MongoDB__. We use Jupyter Notebooks because of their interactivity and inmediate feedback. This, along with the ability to include instructions mixed with code facilitates our approach of learning by doing and testing new concepts. 

If you've never used Jupyter Notebooks, [here is a one-page quick start](https://mongodb-developer.github.io/vector-search-lab/docs/dev-env/jupyter-notebooks).

We use JEDEE during our Developer Days Labs, to speed up the time from theory to code. We also use JEDEE in webinars, MongoDB .Local Labs / demos and during customer meetings or Design Reviews.

## How to use JEDEE

### Run JEDEE in a GitHub Codespace

- Log in to your Github Account. This is needed to start a new Codespace.
    - If you log in with your enterprise / organization account maybe they have restricted the use of Codespaces. In that case use your personal Github account.
- Click this button 

[![Open JEDEE in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/mongodb-developer/jedee)
- This will create a couple Docker containers, open Visual Studio Code in the browser and clone the repo.
- Wait for the Codespace to finish loading. You know everything has finished when you see the MongoDB Visual Studio Code extension loaded at the left (looks like a leaf)
- Navigate to the examples you want to run and click on the run icon. You'll be asked to choose a kernel. Pick Java for the Java examples, Deno for Javascript, DotNet for the C# code and Python for, well, Python code.

### Run JEDEE locally

- Install [Docker](https://docs.docker.com/get-started/introduction/get-docker-desktop/) in your system
- Clone the repo: `git clone https://github.com/mongodb-developer/jedee`
- Install [Visual Studio Code](https://code.visualstudio.com/)
- Open the repo from VSC, open the [Command Palette](https://code.visualstudio.com/api/ux-guidelines/command-palette), select `Dev Containers: Rebuild and reopen in Container`
- JEDEE will start two containers (see section below) 

## Available code examples

We aim to have the same set of examples for each supported language. Right now you have available:

- [Java](/java)
- [Python](/python/)
- [Javascript](/javascript/)
- [C#](/dotnet/)

## Database

The Library database in included, along with a pre-defined connection inside the MongoDB Visual Studio Code extension. Just open the extension and click on the connection to browse the Library database.

There are two versions of this database. One includes vector embeddings for the books, in case you want to try Atlas Vector Search.

If you need to restore the original data, open a Terminal in Visual Studio code and type:

```shell
.devcontainer/import.sh 
```

## open ports

- 3000: Jupyter notebooks
- 27017: MongoDB Atlas local instance 

## Containers

If you clone this repo and run it locally (using VS Code) or start a new Codespace, you'll start two containers:

- an Atlas Local Cluster, that has a MongoDB database server with the Library dataset imported (see `.devcontainer/import.sh`). 
- a Linux Ubuntu container with some development tools:
    - Java (included in the base image)
    - Python (installed through `.devcontainer/setup.sh`)
    - Deno (installed through `.devcontainer/setup.sh`)
    - Jupyter notebook server (installed through `.devcontainer/setup.sh`)
    - The MongoDB database tools (installed through `.devcontainer/install-mongodb-db-tools.sh`)

## Where does the name comes from

This repo is an implementation of the Enterprise Development Environment Emulator (EDEE) that we used to have at MongoDB to provide a quick and simple way to start coding against a MongoDB database.

Instead of creating a new MongoDB Atlas Cluster (which BTW is a good idea as those are [Free Forever](https://account.mongodb.com/account/register)), then importing some data, then setup a develope environments and finally write some code with JEDEE you just launch a new Github Codespace, wait a few minutes and you can start writing code in a Jupyter Notebook.