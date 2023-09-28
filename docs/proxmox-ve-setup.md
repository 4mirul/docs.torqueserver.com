# Proxmox VE Setup

## Installation

Refer [Proxmox VE Get Started](https://www.proxmox.com/en/proxmox-virtual-environment/get-started)

Download Proxmox VE installer at https://www.proxmox.com/en/downloads/proxmox-virtual-environment/iso

Prepare Installation Media refer https://pve.proxmox.com/wiki/Prepare_Installation_Media

Install and can access it using other machine at https://192.168.0.105:8006/

Remove Enterprise Repositories under `Node > Updates > Repositories` and update all packages

### Optional

`vim`

[ohmyzsh](https://gist.githubusercontent.com/4mirul/bebad82a1dfdb10ef1ceb9c4b379d376/raw/2999ce2260b7998f0d2c6a2dba9cdbd206f59b31/ohmyzsh-and-notes.md)

[samba](https://gist.githubusercontent.com/4mirul/bebad82a1dfdb10ef1ceb9c4b379d376/raw/68bebb2b2492db81615b952ace6dad6a7229e21a/debian11-and-samba.md)

## Set up Docker container in Proxmox

https://www.wundertech.net/how-to-set-up-docker-containers-in-proxmox/

https://docs.docker.com/engine/install/debian/

1. At Proxmox GUI, select location to store the container template
2. Select `CT Templates` then click `Templates`
3. Search for Debian and select the package to download
4. Then go to the main Proxmox GUI and click `Create CT`
5. Fill in the information such as Node, Hostname, Password, Template, Disk size, CPU, Memory, Network and click `Finish`
6. At the created container, enable `keyctl` under `Options` > `Features`
7. Update, install `curl` and install docker at `curl -sSL https://get.docker.com/ | sh`
