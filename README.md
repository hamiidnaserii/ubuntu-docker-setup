# Docker Installation Script

A Bash script to automate the installation of Docker and Docker Compose on an Ubuntu server.

## Download and Usage

### 1 - Download the Script
```bash
wget https://raw.githubusercontent.com/hamiidnaserii/ubuntu-docker-setup/main/install_docker.sh
```
### 2 - Make the Script Executable
```bash
chmod +x install_docker.sh
```
### 3 - Run the Script
```bash
./install_docker.sh
```

## What the Script Does
1.	Updates the package index.
2.	Installs required packages for Docker.
3.	Adds Docker’s official GPG key.
4.	Sets up the Docker stable repository.
5.	Installs Docker CE.
6.	Installs Docker Compose.
7.	Verifies the installations.

## Notes
•	Ensure you have sudo privileges to run this script.
•	The script fetches the latest release of Docker Compose from GitHub.

## License
This project is licensed under the MIT License. See the LICENSE file for details.
