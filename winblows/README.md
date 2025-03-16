Script Overview
	1.	Script Strictness
	•	Set-StrictMode -Version Latest and $ErrorActionPreference = 'Stop' stop execution upon encountering errors or undefined variables.
	2.	Logging
	•	The Log function appends messages (with timestamps) to C:\docker_setup.log.
	•	The ErrorExit function logs an error and then exits the script.
	3.	Admin Check
	•	The script checks if you are running with Administrator privileges. If not, it exits with an error.
	4.	Enable Containers Feature
	•	Needed for Docker on Windows Server. Uses Enable-WindowsOptionalFeature -Online -FeatureName containers.
	5.	Install DockerMsftProvider
	•	Installs the Microsoft Docker Provider, required to fetch the Docker package.
	6.	Install Docker
	•	Installs the Docker engine on Windows Server via Install-Package.
	7.	Start Docker Service
	•	Starts the Docker service and sets it to Automatic startup.
	8.	Verbose Output
	•	[+] indicates a success or completion message.
	•	[-] indicates an error.
	•	[!] indicates the script is performing an action.
