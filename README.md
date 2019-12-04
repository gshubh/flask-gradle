# Hello World Flask Application  !

Deploying a Flask application on Docker with Gitlab CI/CD and build using Gradle.

## Getting Started

This is a project space created for all source code and configurations required in order to setup a DevOps pipeline for a given project.
A sample python flask application is considered for enabling CI and Containerization.

## Prerequisites

What things you need to install the software and how to install them

* python
* flask



## Installation


### Python Installation

To install python if python is not installed

```bash
Link: https://linuxize.com/post/how-to-install-python-3-7-on-ubuntu-18-04/
```

To install all the dependencies run the given below command inside the project directory.

```bash
$ pip install -r requirements.txt
```


```bash
Link: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04
```


### Flask Installation

```bash
$ apt-get install -y python-dev python-pip
$ pip install Flask
```


### Download and Install Packer

##### Download Packer

* [Packer Download](https://www.packer.io/downloads)

##### Install Packer

After unzip the package run the given below commands

```bash
$ export PATH=$PATH:/path/to/packer
$ source~/.bashrc
```
To check packer version

```bash
$ packer version
```

Packer installation completed.

### Download and Install Gradle

* [Gradle Install](https://linuxize.com/post/how-to-install-gradle-on-ubuntu-18-04/)


## Continuous Integration & Continuous Deployment

1. Host your git repo in Gitlab. It can be either private or public and still use the free CI. **NOTE: Make sure it’s name is all lowercase.**.
2. Create a ***.gitlab-ci.yml*** in the root of your project. This will trigger the CI engine

In the gitlab-ci file, stages of activity are defined such as compiling and building the project,
running unit tests, building a docker image, and logging in remotely to your server and pulling down the image and rerunning it.

**Every time when pipeline runs, a new docker image with new version tag is updated and that new image gets deployed**


## Gitlab Runner

GitLab Runner is the open source project that is used to run your jobs and send the results back to GitLab. It is used in conjunction with GitLab CI, the open-source continuous integration service included with GitLab that coordinates the jobs.

It allows us to run jobs locally and sending the result back to Gitlab. It acts as an intermediator between our local machine and Gitlab.
In this project I used runner as a docker executor to run the build using image **gitlab/dind**.


### Registering Gitlab Runner

##### Requirements
Before registering a Runner, you need to first:

* [Install it](https://docs.gitlab.com/runner/install/index.html) - Install it on a server separate than where GitLab is installed on
* [Obtain a token](https://docs.gitlab.com/ee/ci/runners/) - Obtain a token for a shared or specific Runner via GitLab’s interface

##### GNU/LINUX

To register a Runner under GNU/Linux:

1. Run the following command:

```bash
$ sudo gitlab-runner register
```

2. Enter your GitLab instance URL:

```bash
Please enter the gitlab-ci coordinator URL (e.g. https://gitlab.com )
https://gitlab.com
```

3. Enter the token you obtained to register the Runner:

```bash
Please enter the gitlab-ci token for this runner
xxx
```

4. Enter a description for the Runner, you can change this later in GitLab’s UI:

```bash
Please enter the gitlab-ci description for this runner
[hostname] my-runner
```

5. Enter the [tags associated with the Runner](https://docs.gitlab.com/ee/ci/runners/#using-tags), you can change this later in GitLab’s UI:

```bash
Please enter the gitlab-ci tags for this runner (comma separated):
my-tag,another-tag
```

6. Enter the [Runner executor](https://docs.gitlab.com/runner/executors/README.html):

```bash
Please enter the executor: ssh, docker+machine, docker-ssh+machine, kubernetes, docker, parallels, virtualbox, docker-ssh, shell:
docker
```

7. If you chose Docker as your executor, you’ll be asked for the default image to be used for projects that do not define one in ***.gitlab-ci.yml***:

```bash
Please enter the Docker image (eg. ruby:2.1):
alpine:latest
```


## Building Stage

In the gitlab-ci file build stage is defined properly. Choose what docker image to work with and run your before_script, script, and after_script.


2. Login in to the gitlab registry
2. Create an image of the project using the docker build command or you can use already created registry image of the project.
3. Push that image into the gitlab registry.


Build stage consist of two builds:
#### 1.  Wheel-build


In this stage run the given below command to genrate an wheel artifact.

```bash
$ python setup.py bdist_wheel
```

#### 2.  Docker-build

1. To login in to the gitlab registry

```bash
$ docker login -u gshubh -p $PASS registry.gitlab.com
```

2. To get an update, install ***pip*** and ***requirements.txt***

```bash
$ apt-get update -qy
$ apt-get install -y python-dev python-pip
$ pip install -r requirements.txt
```

3. To build an docker image

```bash
$ docker build -t $REGISTRY .
```

4. Push image into the gitlab registry.
```bash
$ docker push $REGISTRY
```


##### Build completed !!

## Testing

1. To login in to the gitlab registry

```bash
$ docker login -u gshubh -p $PASS registry.gitlab.com
```
2. To pull an gitlab image from the registry

```bash
$ docker pull $REGISTRY
```

3. To get an update, install ***pip*** and ***requirements.txt***

```bash
$ apt-get update -qy
$ apt-get install -y python-dev python-pip
$ pip install -r requirements.txt
```


### pytest

Pytest is a testing framework which allows us to write test codes using python
#### Advantages of pytest
*  Very easy to start with because of its simple and easy syntax.
*  Can run tests in parallel.
*  Can run a specific test or a subset of tests
*  Automatically detect tests
*  Skip tests
*  Open source

pytest 4.6 is the last version series of pytest which is comatible with python2 also.

4. Steps to install pytest
This version of pytest is compatible with python2 as well as python3

```bash
$ pip install pytest==3.0.7
```

5. To run the test

To run all the tests from all the files in the folder and subfolders we need to just run the pytest command.
```bash
$ py.test
```
To run tests only from a specific file, we can use **py.test filename**
```bash
 $ py.test test_sample1.py
```

5. To run a docker container running on **port:8085** which is connected to the Localhost **port:8090** where the flask application is running
```bash
$ docker run --name=temp -p 8090:8085 -i $REGISTRY
```


##### Testing completed !!

## Deployment

Steps to deploy this on a live system

1. login in to the gitlab registry

```bash
$ docker login -u gshubh -p $PASS registry.gitlab.com
```
2. Pull the docker image from the gitlab registry

```bash
- docker pull $REGISTRY
```

3. To deploy an application on the docker container
```bash
$ docker run --name=temp -p 8090:8085 -i $REGISTRY
```

##### Deployment completed !!

## Framework and Tools used

* [Flask](http://flask.palletsprojects.com/en/1.1.x/) - The web framework used
* [Gradle](https://docs.gradle.org/current/userguide/userguide.html) - Build Automation Tool
* [Packer](https://www.packer.io/docs/builders/docker.html) - Used to generate Docker images for multiple platforms
* [Docker](https://docs.docker.com/get-started/) - To Dockerize the the Flask application
* [Gitlab](https://docs.gitlab.com/ee/user/index.html) - To create CI/CD pipeline for the project using ***.gitlab-ci.yml*** file.
