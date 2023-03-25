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

![Screenshot 2023-03-25 at 3 09 48 PM](https://user-images.githubusercontent.com/42564839/227709651-baf60d3d-9b54-49e0-80a2-90a16e385d21.png)

Note: If the key path is wrong, an exception will be thrown