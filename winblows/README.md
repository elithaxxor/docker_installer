 # Script Overview

1. **Script Strictness**
   • `Set-StrictMode -Version Latest` and `$ErrorActionPreference = 'Stop'` halt execution when errors or undefined variables are encountered.

2. **Logging**
   • The `Log` function appends timestamped messages to C:\docker_setup.log.
   • The `ErrorExit` function logs an error message and terminates the script.

3. **Admin Check**
   • The script verifies Administrator privileges. If not detected, it exits with an error.

4. **Enable Containers Feature**
   • Required for Docker on Windows Server. Implemented using `Enable-WindowsOptionalFeature -Online -FeatureName Containers`.

5. **Install DockerMsftProvider**
   • Installs the Microsoft Docker Provider, necessary for accessing the Docker package.

6. **Install Docker**
   • Installs the Docker engine on Windows Server via the `Install-Package` command.

7. **Start Docker Service**
   • Initiates the Docker service and configures it for automatic startup.

8. **Status Indicators**
   • [+] Indicates successful completion of an operation.
   • [-] Indicates an error has occurred.
   • [!] Indicates an action in progress. # Script Overview

1. **Script Strictness**
   • `Set-StrictMode -Version Latest` and `$ErrorActionPreference = 'Stop'` halt execution when errors or undefined variables are encountered.

2. **Logging**
   • The `Log` function appends timestamped messages to C:\docker_setup.log.
   • The `ErrorExit` function logs an error message and terminates the script.

3. **Admin Check**
   • The script verifies Administrator privileges. If not detected, it exits with an error.

4. **Enable Containers Feature**
   • Required for Docker on Windows Server. Implemented using `Enable-WindowsOptionalFeature -Online -FeatureName Containers`.

5. **Install DockerMsftProvider**
   • Installs the Microsoft Docker Provider, necessary for accessing the Docker package.

6. **Install Docker**
   • Installs the Docker engine on Windows Server via the `Install-Package` command.

7. **Start Docker Service**
   • Initiates the Docker service and configures it for automatic startup.

8. **Status Indicators**
   • [+] Indicates successful completion of an operation.
   • [-] Indicates an error has occurred.
   • [!] Indicates an action in progress.
