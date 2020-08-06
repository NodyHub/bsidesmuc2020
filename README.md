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
