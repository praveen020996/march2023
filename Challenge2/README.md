# TechChallenge 2023

## Overview 

This is a shell script that uses azure cli to get details about a Virtual Machine in Azure

## How to run

- Install azure cli
- Clone the repo
- Open a terminal from the folder that has the get-vm-details.sh file
- Run following commands
```
#Login to Azure Cloud
az login

#Run the shell script
sh get-vm-details.sh <VM_NAME> <RESOURCE_GROUP_NAME>
```

The script first outputs all the details about the VM in JSON format. Then, the script outputs two more individual attributes of the VM(Resource ID of the VM and VM Size). 