# 🚀 Docker Installer Script

![Docker](https://www.docker.com/sites/default/files/d8/2019-07/vertical-logo-monochromatic.png)

![GitHub stars](https://img.shields.io/github/stars/elithaxxor/docker_installer)
![GitHub forks](https://img.shields.io/github/forks/elithaxxor/docker_installer)
![GitHub issues](https://img.shields.io/github/issues/elithaxxor/docker_installer)
![GitHub license](https://img.shields.io/github/license/elithaxxor/docker_installer)

Welcome to the **Docker Installer Script** repository! This script is designed to automate the installation of Docker on both Debian-based systems and Windows. It takes care of updating package lists, installing necessary dependencies, adding Docker's official GPG key, and setting up Docker repositories on Linux, and enabling necessary features and installing Docker on Windows.

## 🎨 Features

- **Automated Installation**: Installs Docker and its dependencies automatically.
- **Error Handling**: Logs errors and exits gracefully if something goes wrong.
- **Logging**: Maintains a log file of the installation process.

## 📋 Prerequisites

Before running the script, ensure you have the following:

- For Linux:
  - A Debian-based system (e.g., Debian, Ubuntu)
  - `sudo` privileges

- For Windows:
  - Administrator privileges

## 📦 Installation

### Linux

1. **Clone the Repository**:
    ```bash
    git clone https://github.com/elithaxxor/docker_installer.git
    cd docker_installer/linux
    ```

2. **Run the Script**:
    ```bash
    chmod +x docker_install.sh
    sudo ./docker_install.sh
    ```

### Windows

1. **Clone the Repository**:
    ```powershell
    git clone https://github.com/elithaxxor/docker_installer.git
    cd docker_installer/winblows
    ```

2. **Run the Script**:
    ```powershell
    .\install_docker.ps1
    ```

## 📝 Usage

### Linux

- The script will:
  - Update package lists
  - Install required dependencies
  - Add Docker's official GPG key
  - Set up Docker repositories
  - Install Docker packages

- Logs of the installation process will be saved to `/var/log/docker_setup.log`.

### Windows

- The script will:
  - Enable 'containers' Windows feature
  - Install DockerMsftProvider
  - Install Docker
  - Start and configure Docker service

- Logs of the installation process will be saved to `C:\docker_setup.log`.

## 🔧 Customization

- **Log File Location**: To change the log file location, modify the `LOG_FILE` variable in the script.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🌟 Contributing

We welcome contributions! Please read our [CONTRIBUTING](CONTRIBUTING.md) guidelines before submitting a pull request.

## 💬 Support

If you have any questions or need help, feel free to open an issue or contact us at [support@example.com](mailto:support@example.com).

---

Happy Dockerizing! 🐳
