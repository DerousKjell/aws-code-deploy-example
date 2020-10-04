# aws-code-deploy-example

This repository is a guide for setting up CodeDeploy for a CI / CD process.
We will launch an ec2 instance and host the index.html from this repository on it.
Follow the steps to configure the CD.

1) Follow the steps in iam.txt
2) Follow the steps in ec2.txt
3) Follow the steps in code-deploy.txt
4) Follow the steps in code-pipeline.txt

How does it work?

1) We create roles and policies so the services have the correct permissions
2) We create an IAM role. In the bash script we install apache and the code-deploy agent
3) In AWS Code Deploy we configure the deployment. AWS Code Deploy uses the appspec.yml file. We move the index.html file to the apache www folder.
4) In AWS Code Pipeline we configure a pipeline. If source code is changed, the pipeline automatically starts and executes the AWS Code Deploy deployment.
