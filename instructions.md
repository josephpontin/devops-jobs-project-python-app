Python Environment Project

Timings

3 Days

Summary

We have a created a console JSON application that can gather data from IT Jobs Watch.

Your job is to create working development, testing and production environment and to build a pipeline to move the code through them using Jenkins. This will include your application and configuration code.


Note: We will need to add the group to Repo on GitHub before it is accessible.


You can clone the code for the application from the following repo:

https://github.com/spartaglobal/It_Jobs_Watch_Data_Package

You should fork this repo to one of your own.

Tasks

Python App Pipeline


	
Create a development environment using Vagrant and provision it with Chef such that it can run the application successfully.
	Create an AMI using packer and your cookbooks that is capable of running the application and configure Jenkins to use this as a slave
	Create a Jenkins job that listens for Webhooks from your forked repo and starts a testing job
	Run the tests in the application on the slave node
	Create a job that builds your AMI when all tests have passed using packer.


Chef Python Cookbook Pipeline


	
Create a development pipeline for your Python cookbook.
	Create a Jenkins job that listens for Webhooks from your Python Cookbook repo and starts a testing job.
	Run tests using Chef Kitchen in the Cloud.
	Create a job that will merge your changes to your configuration to the master branch which can then be used by the pipeline above.


Deliverables


	
Python cookbook stored in a github repo ( separate ) with Jenkins pipeline.
	Forked ItJobsWatch application repo with Vagrantfile, Berksfile, packer.json and ability to simply Vagrant up and run in development.
	Jenkins Job that runs test suite on pushes to master branch of forked application repo.
	Separate Jenkins job that builds an application AMI using packer.json when tests pass successfully.


Notes

When it comes to setting up the python slave nodes the group should create their amis and only one need be used. They students will not have access to the configuration of Jenkins to set one up. So the instructor can pick the best AMI and set up the slave for them to use.