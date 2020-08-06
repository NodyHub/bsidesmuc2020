# Scan results

... for heroku

## amicontained

```bash
~ $ ./amicontained
./amicontained
Container Runtime: lxc
Has Namespaces:
	pid: true
	user: false
AppArmor Profile: lxc-container-default (enforce)
Capabilities:
	BOUNDING -> dac_override fowner fsetid kill setgid setuid setpcap linux_immutable net_bind_service net_broadcast ipc_lock ipc_owner sys_pacct sys_resource sys_tty_config lease audit_write audit_control setfcap syslog wake_alarm block_suspend audit_read
Seccomp: filtering
Blocked Syscalls (47):
	PTRACE SYSLOG SETUID SETGID SETSID SETREUID SETREGID SETGROUPS SETRESUID SETRESGID PERSONALITY VHANGUP PIVOT_ROOT CHROOT ACCT SETTIMEOFDAY UMOUNT2 SWAPON SWAPOFF REBOOT SETHOSTNAME SETDOMAINNAME INIT_MODULE DELETE_MODULE QUOTACTL LOOKUP_DCOOKIE CLOCK_SETTIME GET_MEMPOLICY KEXEC_LOAD ADD_KEY REQUEST_KEY KEYCTL FUTIMESAT UNSHARE MOVE_PAGES PERF_EVENT_OPEN FANOTIFY_INIT NAME_TO_HANDLE_AT OPEN_BY_HANDLE_AT CLOCK_ADJTIME SETNS PROCESS_VM_READV PROCESS_VM_WRITEV KCMP FINIT_MODULE KEXEC_FILE_LOAD BPF
Looking for Docker.soc
```

## botb

```bash
~ $ ./botb -metadata -find-docker -find-sockets -find-http
./botb -metadata -find-docker -find-sockets -find-http
[+] Break Out The Box
[+] Looking for Dockerd
[*] Looking for Docker ENV variables
[+] Hunting Docker Socks
[+] Looking for HTTP enabled Sockets from: /
[*] Attempting to query metadata endpoint: 'http://169.254.169.254:8080/'
[*] Attempting to query metadata endpoint: 'http://169.254.169.254/'
[*] Attempting to query metadata endpoint: 'http://metadata.google.internal/'
[*] Attempting to query metadata endpoint: 'http://100.100.100.200/'
[*] Attempting to query metadata endpoint: 'https://kubernetes.default'
[+] Hunting Down UNIX Domain Sockets from: /
[+] Finished
```
