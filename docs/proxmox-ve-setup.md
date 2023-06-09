# Proxmox VE Setup

## Installing Proxmox VE

- Download Proxmox VE from [link](https://www.proxmox.com/en/downloads/category/iso-images-pve)

- Use [Rufus](https://rufus.ie/en/) or [USBImager](https://bztsrc.gitlab.io/usbimager/) to create USB installation media from bootable ISOs. Or use `dd` command, `dd if=/path/to/proxmox-ve_*.iso of=/dev/[device] bs=4M status=progress && sync`

- Boot the bootable USB drive and follow the on-screen instructions to install Proxmox on the system. Refer [link](https://www.proxmox.com/en/downloads/category/documentation-pve) for documentations.

## The Interface

