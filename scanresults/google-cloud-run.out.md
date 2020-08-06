# Scan results

... for google cloud run container

## amicontained

```bash
localhost:/tools# ./amicontained
./amicontained
Container Runtime: not-found
Has Namespaces:
	pid: false
	user: false
AppArmor Profile: unconfined
Capabilities:
	BOUNDING -> chown dac_override dac_read_search fowner fsetid kill setgid setuid setpcap linux_immutable net_bind_service net_broadcast net_admin net_raw ipc_lock ipc_owner sys_module sys_rawio sys_chroot sys_ptrace sys_pacct sys_admin sys_boot sys_nice sys_resource sys_time sys_tty_config mknod lease audit_write audit_control setfcap mac_override mac_admin syslog wake_alarm block_suspend audit_read
Seccomp: disabled

```

## botb

```bash
localhost:/tools# ./botb -metadata -find-docker -find-sockets -find-http
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
[!] Reponse from 'http://metadata.google.internal/' -> 200
[*] Attempting to query metadata endpoint: 'http://100.100.100.200/'
[*] Attempting to query metadata endpoint: 'https://kubernetes.default'
[+] Hunting Down UNIX Domain Sockets from: /
[!] Valid Socket: /dev/log
[+] Finished


```
