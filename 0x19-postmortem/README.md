#  Incident Report: Connectivity Issues with Docker Container Using Vagrant

<img src=./pmt_meme.jpg width=50%>

## Summary:
On 03/03/2023 at 12:30pm, a connectivity issue was reported when attempting to connect to a Docker container using Vagrant. The issue affected multiple users and impacted their ability to work with the container.

## Description:
The incident was reported by multiple users who were unable to connect to a Docker container using Vagrant. The container was set up to run a specific application, and users needed to access it to complete their work. The container was launched successfully using Vagrant, but users were unable to access it using the designated IP address and port number.

## Initial Investigation:
Upon investigation, it was found that the issue was related to a misconfiguration of the Vagrantfile used to launch the container. Specifically, the port forwarding settings were not correctly set up, preventing external access to the container.

## Resolution:
To resolve the issue, the Vagrantfile was updated with the correct port forwarding settings. After the changes were made, the container was successfully accessed by all affected users. To prevent similar incidents from occurring in the future, a review of all Vagrantfiles used to launch containers will be conducted to ensure that port forwarding settings are correctly configured.

## Lessons Learned:
This incident highlights the importance of thorough testing of infrastructure and configurations prior to deployment. It is also a reminder to regularly review and update infrastructure and configurations to ensure they are properly configured and up-to-date.

## Postmortem:
Date of Postmortem: 3/03/3023

## Overview:
This postmortem provides a more detailed analysis of the incident that occurred on 03/03/2023 at 12:30pm, which resulted in connectivity issues when attempting to connect to a Docker container using Vagrant.
Root Cause:
The root cause of the incident was a misconfiguration of the Vagrantfile used to launch the container. Specifically, the port forwarding settings were not correctly set up, preventing external access to the container.

## Impact:
The incident affected multiple users and prevented them from accessing the Docker container using Vagrant, which impacted their ability to work with the container and complete their tasks.

##Response:
The incident was promptly responded to by the IT team, who conducted an investigation into the cause of the connectivity issues. Once the issue was identified, the Vagrantfile was updated with the correct port forwarding settings, which allowed users to successfully access the container.

## Corrective Actions:
To prevent similar incidents from occurring in the future, the following corrective actions will be taken:
* A review of all Vagrantfiles used to launch containers will be conducted to ensure that port forwarding settings are correctly configured.
* An updated documentation will be provided to users, highlighting the correct port forwarding settings to be used when launching containers using Vagrant.
* A regular audit of Vagrantfiles and other infrastructure configurations will be conducted to ensure they are properly configured and up-to-date.

## Conclusion:
The incident was quickly resolved, and steps were taken to prevent similar incidents from occurring in the future. The incident served as a reminder to regularly review and update infrastructure and configurations to ensure they are properly configured and up-to-date.
