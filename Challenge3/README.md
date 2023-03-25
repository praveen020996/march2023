# TechChallenge 2023

## Overview 

This is a powershell script that can parse a nested JSON string and gets a value for the provided key path

## How to run

- Clone the repo
- Open a terminal from the folder that has the nested-object.ps1 file
- Run following command
```
pwsh nested-object.ps1
```

The script prompts for 2 inputs:
1. Object eg: {"a":{"g":{"x":{"a":"f","v":{"g":"d"}}}}}
2. Key    eg: a/g/x/v/g

Screenshot of a sample run

![c3 drawio](https://user-images.githubusercontent.com/42564839/227709813-92857424-4da1-458c-9fa6-c8563d2ef423.png)

Note: If the key path is wrong, an exception will be thrown
