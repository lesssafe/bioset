# 云铲病毒专杀工具
## 使用说明
1、将云铲挖矿专杀工具.sh、busybox工具上传至服务器同一目录  
2、修改云铲挖矿专杀工具.sh的权限 chmod 777 云铲挖矿专杀工具.sh  
3、运行专杀工具 ./云铲挖矿专杀工具.sh
## 注意事项
1、该病毒还添加了ssh密钥，请查看cat /root/.ssh/authorized_keys文件中是否存在非本人创建的ssh密钥，若存在请移除非本人创建的ssh密钥  
2、病毒留下SSH秘钥为：SSH-rsa
AAAAB3NzaC1yc2EAAAABIwAAAQEAv54nAGwGwm626zrsUeI0bnVYgjgS/ux7V5phklbZYFHEm+3Aa0gfu5EQyQdnhTpo1adaKxWJ97mrM5a2VAfTN+n6KUwNYRZpaDKiUwmHNUSW7E1S18ClTCBtRsC0rRDTnIrslTRSHlM3cNN+MskKTW/vWz/oE3ll4MMQqexZlsLvMpVVlGq6t3XjFXz0ABBI8GJ0RaBS81FS2R1DNSCb+zORNb6SP6g9hHk1i9V5PjWNqNGXyzWIrCxLc88dGaTttUYEoxCl4z9YOiTw8F5S4svbcqTTVIu/zt/7OIQixDREGbddAaXZXidu+ijFeeOul/lJXEXQK8eR1DX1k2VL+w== rsa 2048-040119
## IOC信息
www.fullskystar.top
