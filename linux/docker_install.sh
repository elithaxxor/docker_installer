#!/usr/bin/env bash

# TODO: Change log file location. 
LOG_FILE="/var/log/docker_setup.log"

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | sudo tee -a "$LOG_FILE"
}

error_exit() {
    echo "[-] ERROR: $1"
    log "ERROR: $1"
    exit 1
}

main() {
    echo "[!] Starting Docker installation script..."
    log "[+] Starting Docker installation script."

    # Enable strict mode
    set -euo pipefail

    # Update package list
    echo "[!] Updating package lists..."
    log "Updating package lists..."
    sudo apt-get update || error_exit "Failed to update package lists."
    echo "[+] Package lists updated successfully."

    # Install prerequisites
    echo "[!] Installing required dependencies (ca-certificates, curl, gnupg)..."
    log "Installing required dependencies..."
    sudo apt-get install -y ca-certificates curl gnupg || error_exit "Failed to install required dependencies."
    echo "[+] Dependencies installed successfully."

    # Create keyrings directory if not exists
    echo "[!] Creating keyrings directory..."
    log "Creating keyrings directory..."
    sudo install -m 0755 -d /etc/apt/keyrings || error_exit "Failed to create keyrings directory."
    echo "[+] Keyrings directory created."

    # Add Docker's official GPG key
    echo "[!] Adding Docker's GPG key..."
    log "Adding Docker GPG key..."
    curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg || error_exit "Failed to add Docker GPG key."
    echo "[+] Docker GPG key added successfully."

    # Set correct permissions
    echo "[!] Setting permissions for Docker GPG key..."
    log "Setting permissions for Docker GPG key..."
    sudo chmod a+r /etc/apt/keyrings/docker.gpg || error_exit "Failed to set permissions for Docker GPG key."
    echo "[+] Permissions set for Docker GPG key."

    # Add Docker repository
    echo "[!] Adding Docker repository to APT sources..."
    log "Adding Docker repository..."
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
        $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
        sudo tee /etc/apt/sources.list.d/docker.list > /dev/null || error_exit "Failed to add Docker repository."
    echo "[+] Docker repository added successfully."

    # Update package list again
    echo "[!] Updating package lists after adding Docker repository..."
    log "Updating package lists after adding Docker repository..."
    sudo apt-get update || error_exit "Failed to update package lists after adding Docker repository."
    echo "[+] Package lists updated successfully after adding Docker repository."

    # Install Docker packages
    echo "[!] Installing Docker packages..."
    log "Installing Docker packages..."
    sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin || error_exit "Failed to install Docker packages."
    echo "[+] Docker packages installed successfully."

    echo "[+] Docker installation completed successfully!"
    log "[+] Docker installation completed successfully."
}

runMain() {
    echo "[!] Starting the Docker setup script."
    log "Starting the Docker setup script."
    main
    echo "[+] Docker setup script finished successfully."
    log "Docker setup script finished."
}

runMain
