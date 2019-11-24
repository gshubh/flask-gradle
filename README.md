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

To install all the dependencies run the given below inside the project directory.

```bash
$ pip install -r requirements.txt
```


A step by step series of examples that tell you how to get a development env running

###Installing Docker

```bash
Link: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04
```


### Installing Gradle

```bash
Link: https://linuxize.com/post/how-to-install-gradle-on-ubuntu-18-04/
```

### Download and Install Packer

##### Download Packer

* [Packer Download](https://www.packer.io/downloads.htm)

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

## Built With

* [Flask](http://flask.palletsprojects.com/en/1.1.x/) - The web framework used
* [Gradle](https://docs.gradle.org/current/userguide/userguide.html) - Build Automation Tool
* [Packer](https://www.packer.io/docs/builders/docker.html) - Used to generate Docker images for multiple platforms
* [Docker](https://docs.docker.com/get-started/) - To Dockerize the the Flask application
* [Gitlab](https://docs.gitlab.com/ee/user/index.html) - To create CI/CD pipeline for the project using "".gitlab-ci.yml" file.

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags).

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
