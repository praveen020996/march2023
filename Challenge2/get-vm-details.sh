#!/bin/sh
vmName=$1
resourceGroupName=$2

#Get all details about the vm in json format
echo "All details"
az vm show -g $2 -n $1 -o json

#Get VM ID
echo "VM Resource ID"
az vm show -g $2 -n $1 --query "id" -o tsv 

#Get VM size
echo "Size of the VM"
az vm show -g $2 -n $1 --query "hardwareProfile.vmSize" -o tsv 