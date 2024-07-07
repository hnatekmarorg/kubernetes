# VMS that support kubernetes cluster (monitoring, caddy, ...)
All vms are based on https://www.flatcar.org/

## Bootstraping
- Boot system via ipxe
- SSH into machine as `core@<ip>`
- download ignition `wget <url>`
- call `flatcar-install -d /dev/sda -i ignition.json`
- reboot