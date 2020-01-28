# IT Jobswatch Project
## Cookbooks

There are two cookbooks in this project:

### devenv

This cookbook will set up a local development environment with the app installed (see below). It can be ran using `vagrant up`.

### devenv-ami (Test Environment)

This cookbook is similar to the devenv, but has a packer.json file to build an AMI, that preinstalls python3, pip3 and the necessary modules for the app. It does not install the app or set up any of the necessary folder structures. To build the AMI, run `packer build packer.json`

## To launch the dev environment.

- From this directory run `vagrant up`.
- Once the VM has started, use `vagrant ssh` to login to the box.
- Access the folder where the code is installed by using `cd /home/ubuntu/code`.
- To run the code:
  - Use `python3 main.py`
- To run the tests:
  - Use `python3 -m pytest tests`

## Pipeline

A CI pipeline has been created meaning that if we push to the dev branch, the tests will be run on the slave node. A notification will be sent to Teams. In addition the dev branch will be merged with master branch only if the tests pass.

## Production Environment
In addition, there is also a production environment that can be found in the devops-jobs-prodev repo. This is similar to the Test Environment AMI, but also packages the app. Again, this can be ran using `packer build packer.json`
