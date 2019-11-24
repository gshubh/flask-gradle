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


### Installing python

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


### Installing Gradle

```bash
Link: https://linuxize.com/post/how-to-install-gradle-on-ubuntu-18-04/
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

* [Gradle Install](https://gradle.org/install/)


## Continuous Integration & Continuous Deployment

1. Host your git repo in Gitlab. It can be either private or public and still use the free CI. **NOTE: Make sure it’s name is all lowercase.** A mistake I wish I had not made.
2. Create a ***.gitlab-ci.yml*** in the root of your project. This will trigger the CI engine

In the gitlab-ci file you will define stages of activity such as compiling and building the project,
running unit tests, building a docker image, and logging in remotely to your server and pulling down the image and rerunning it.

### Building Stage

In the gitlab-ci file build stage is defined properly. Choose what docker image to work with and run your before_script, script, and after_script.


2. Login in to the gitlab registry
2. Create an image of the project using the docker build command or you can use already created registry image of the project.
3. Push that image into the gitlab registry.

### Deployment Stage


##### Install and configure a gitlab runner (Ubuntu 18.04)

* [Gitlab Runner](https://io-deck.com/how-to-install-and-configure-gitlab-runner.html#introduction)



## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```bash
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Framework and Tools used

* [Flask](http://flask.palletsprojects.com/en/1.1.x/) - The web framework used
* [Gradle](https://docs.gradle.org/current/userguide/userguide.html) - Build Automation Tool
* [Packer](https://www.packer.io/docs/builders/docker.html) - Used to generate Docker images for multiple platforms
* [Docker](https://docs.docker.com/get-started/) - To Dockerize the the Flask application
* [Gitlab](https://docs.gitlab.com/ee/user/index.html) - To create CI/CD pipeline for the project using "".gitlab-ci.yml" file.


## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags).

## Authors

* **Shubham Gupta** - *Initial work* - [gshubh](https://github.com/gshubh)

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
