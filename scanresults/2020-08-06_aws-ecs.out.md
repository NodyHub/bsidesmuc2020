# Scan results

... for a AWS ecs container (EC2)

## Note

Cloud Permissions:

- Default: Enable Metadata
- Metadata v1 & v2 & optinal Token
- IAM possible, but none in default
- ECS creates IAM role


## amicontained

```bash
4d833a0078e5:/tools# ./amicontained
./amicontained
Container Runtime: not-found
Has Namespaces:
	pid: true
	user: false
AppArmor Profile: unconfined
Capabilities:
	BOUNDING -> chown dac_override fowner fsetid kill setgid setuid setpcap net_bind_service net_raw sys_chroot mknod audit_write setfcap
Seccomp: filtering


```

## botb

```bash
f1abaaa97365:/tools# ./botb -metadata -find-docker -find-sockets -find-http
./botb -metadata -find-docker -find-sockets -find-http
[+] Break Out The Box
[+] Looking for Dockerd
[*] Looking for Docker ENV variables
[+] Hunting Docker Socks
[+] Looking for HTTP enabled Sockets from: /
[*] Attempting to query metadata endpoint: 'http://169.254.169.254:8080/'
[*] Attempting to query metadata endpoint: 'http://169.254.169.254/'
[!] Reponse from 'http://169.254.169.254/' -> 200
[*] Attempting to query metadata endpoint: 'http://metadata.google.internal/'
[*] Attempting to query metadata endpoint: 'http://100.100.100.200/'
[*] Attempting to query metadata endpoint: 'https://kubernetes.default'
[+] Hunting Down UNIX Domain Sockets from: /
[+] Finished

```
