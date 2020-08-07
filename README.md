# bsidesmuc2020
Created and collected content for BSidesMUC2020



| Service                   | PID  Namesace | User  Namespace | AppArmor Profile/ SELinux | Available  Capabilities | Filtered Seccomp | Metadata-Service                                         | Remark        |
|---------------------------|---------------|-----------------|---------------------------|-------------------------|------------------|----------------------------------------------------------|---------------|
| AWS ECS                   | Yes           | No              | unconfined                | 14                      | 0                | http://169.254.169.254/                                  | -/-           |
| AWS Fargate               | Yes           | No              | unconfined                | 14                      | 65               | None                                                     | -/-           |
| Azure Container Instances | Yes           | No              | unconfined                | 14                      | 65               | None                                                     | -/-           |
| Docker local              | Yes           | No              | docker-default            | 13                      | 62               | None                                                     | Docker Engine |
| fly.io                    | No            | No              | kernel                    | 38                      | disabled         | None                                                     | Firecracker   |
| Google Cloud Run          | No            | No              | unconfined                | 38                      | disabled         | http://169.254.169.254/ http://metadata.google.internal/ | gVisor        |
| Heroku                    | Yes           | No              | lxc-container-default     | 23                      | 47               | None                                                     | LXC           |


Cpabilities Comparrisson

i|AWS ECS|AWS Fargate|Azure Container|Docker local|fly.io|Google Cloud|Heroku||
|-------|-----------|---------------|------------|------|-------------------||
|chown|chown|chown|chown|chown|chown||
|dac_override|dac_override|dac_override|dac_override|dac_override|dac_override|dac_override|
|||||dac_read_search|dac_read_search||
|fowner|fowner|fowner|fowner|fowner|fowner|fowner|
|fsetid|fsetid|fsetid|fsetid|fsetid|fsetid|fsetid|
|kill|kill|kill|kill|kill|kill|kill|
|setgid|setgid|setgid|setgid|setgid|setgid|setgid|
|setuid|setuid|setuid|setuid|setuid|setuid|setuid|
|setpcap|setpcap|setpcap|setpcap|setpcap|setpcap|setpcap|
|||||linux_immutable|linux_immutable|linux_immutable|
|net_bind_service|net_bind_service|net_bind_service|net_bind_service|net_bind_service|net_bind_service|net_bind_service|
|||||net_broadcast|net_broadcast|net_broadcast|
|||||net_admin|net_admin||
|net_raw|net_raw|net_raw|net_raw|net_raw|net_raw||
|||||ipc_lock|ipc_lock|ipc_lock|
|||||ipc_owner|ipc_owner|ipc_owner|
|||||sys_module|sys_module||
|||||sys_rawio|sys_rawio||
|sys_chroot|sys_chroot|sys_chroot|sys_chroot|sys_chroot|sys_chroot||
|||||sys_ptrace|sys_ptrace||
|||||sys_pacct|sys_pacct|sys_pacct|
|||||sys_admin|sys_admin||
|||||sys_boot|sys_boot||
|||||sys_nice|sys_nice||
|||||sys_resource|sys_resource|sys_resource|
|||||sys_time|sys_time||
|||||sys_tty_config|sys_tty_config|sys_tty_config|
|mknod|mknod|mknod|mknod|mknod|mknod||
|||||lease|lease|lease|
|audit_write|audit_write|audit_write|audit_write|audit_write|audit_write|audit_write|
|||||audit_control|audit_control|audit_control|
|setfcap|setfcap|setfcap|setfcap|setfcap|setfcap|setfcap|
|||||mac_override|mac_override||
|||||mac_admin|mac_admin||
|||||syslog|syslog|syslog|
|||||wake_alarm|wake_alarm|wake_alarm|
|||||block_suspend|block_suspend|block_suspend|
|||||audit_read|audit_read|audit_read|


