# Docker

How to run:
1) Create a Linux virtual machine (ex.: Azure)
2) Create a public IP in your server and open these ports:
---

| **Service**     | **Internal Port** | **Host (Public) Port** | **Protocol** | **Description**                                   |
|------------------|-------------------|-------------------------|--------------|-------------------------------------------------|
| PHP Application  | 80               | 8080                   | TCP          | To access the PHP web application (HTTP).   |
| phpMyAdmin       | 80               | 8081                   | TCP          | For managing the MySQL database via phpMyAdmin. |
| Portainer        | 9000             | 9000                   | TCP          | For managing Docker containers via Portainer.   |

---
2) Open the Cloud Shell to connect to your virtual machine

`ssh your_user@public_ip` or `ssh -i key.pem your_user@public_ip`

3) Copy the folders to your virtual machine

4) Install docker through CLI
```
sudo su – root 
wget -q0- https://get.docker.com |sh
```
5) Change directory to folder /Docker/ 

(Tip: click Manage files>Open file share and then upper left Connect>Linux>Script in Azure to get the folder path)
```
cd your_file_path/Docker/
```
7) Run docker compose
```
docker compose up -d
```
6) Access application

| **Service**    | **Host URL**                | **Description**                                    |
|-----------------|-----------------------------|----------------------------------------------------|
| **php**        | `http://your_public_IP:8080`     | PHP application running on Apache.               |
| **phpmyadmin** | `http://your_public_IP:8081`     | Web interface for managing the MySQL database.    |
| **portainer**  | `http://your_public_IP:9000`     | Portainer interface for managing Docker containers. |



