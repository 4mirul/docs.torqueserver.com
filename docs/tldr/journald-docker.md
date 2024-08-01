---
tags:
- tldr
- linux
- windows
- 2024-08
---
# Enable `journald` for Docker

set the `log-driver` to appropriate values in the `daemon.json` file, which is located or create new file at `/etc/docker` on Linux hosts or `C:\ProgramData\docker\config` on windows hosts. For more information about configuring Docker using `daemon.json`, see [daemon.json](https://docs.docker.com/config/daemon/).

Example:

```.json
{
  "log-driver": "journald"
}
```
