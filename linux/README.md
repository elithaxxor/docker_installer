# 🚀 Docker Installer Script

![Docker](https://www.docker.com/sites/default/files/d8/2019-07/vertical-logo-monochromatic.png)

Welcome to the **Docker Installer Script** repository! This script is designed to automate the installation of Docker on Debian-based systems. It takes care of updating package lists, installing necessary dependencies, adding Docker's official GPG key, and setting up Docker repositories.

## 🎨 Features

- **Automated Installation**: Installs Docker and its dependencies automatically.
- **Error Handling**: Logs errors and exits gracefully if something goes wrong.
- **Logging**: Maintains a log file of the installation process.

## 📋 Prerequisites

Before running the script, ensure you have the following:

- A Debian-based system (e.g., Debian, Ubuntu)
- `sudo` privileges

## 📦 Installation

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

## 📝 Usage

- The script will:
  - Update package lists
  - Install required dependencies
  - Add Docker's official GPG key
  - Set up Docker repositories
  - Install Docker packages

- Logs of the installation process will be saved to `/var/log/docker_setup.log`.

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
