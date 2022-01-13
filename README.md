# Prodigy on Docker

## Requirements
- [Docker](https://docs.docker.com/get-docker/)

## Setup
1) Unzip the contents from the "prodigy-1.11.6-linux.zip" file in this project wheel directory.
2) Using the terminal, navigate to this repository dir, and then execute the following command to build the docker image:

```shell script
docker build . -t prodigy
```

3) Using the terminal, navigate to this repository dir, and then execute the following command to initiate a Docker container to use Prodigy. 
```shell script
docker run -it --user $(id -u):$(id -g) -p 8080:8080 -v "$(pwd)"/outputs:/outputs -v "$(pwd)"/prodigy:/prodigy_home -v "$(pwd)"/datasets:/datasets prodigy bash
```
After initiating the container, you will be able to run Prodigy commands like ```prodigy stats```. More details about the commands to use in [https://prodi.gy/docs](https://prodi.gy/docs) 

4) To finish the container, press ```Ctrl+d```.

## Folder structure
This repository is organized with the following directories.
- datasets: In this directory, you should store the prodigy jsonl files (inputs and outputs).  
- prodigy: This directory is the PRODIGY_HOME dir. It stores the tool configuration and the *.db files where the annotations are stored.  
- wheel: In this directory, you should store the wheel files for installation.  