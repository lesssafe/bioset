#!/bin/sh
echo "云铲挖矿专杀工具"
echo "by:LessSafe"
echo "https://github.com/lesssafe"
sleep 3
ldd /usr/bin/ls | grep "/lib/libcurl.so.2.17.0" >/dev/null
if [ $? -eq 0 ];then
    echo "发现病毒"
    chmod 777 busybox
    ./busybox chattr -i /lib/libcurl.so.2.17.0
    ./busybox mv /lib/libcurl.so.2.17.0 /lib/libcurl.so.2.17.0.old
    ./busybox chattr -i /etc/ld.so.preload
    echo -n > /etc/ld.so.preload
    kill -9 $(pidof /usr/bin/bioset)
    kill -9 $(pidof /usr/bin/kthreadd)
    chattr -i /usr/bin/kthreadd /usr/bin/bioset /root/.ssh/authorized_keys
    rm -rf /usr/bin/kthreadd
    rm -rf /usr/bin/bioset
    echo "注意：该病毒还添加了ssh密钥，请查看cat /root/.ssh/authorized_keys文件中是否存在非本人创建的ssh密钥，若存在请移除非本人创建的ssh密钥"
else
    echo "未发现顽固挖矿病毒"
fi