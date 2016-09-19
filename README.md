首先 感谢hellofwy提供这么好的脚本，原版请移步[hellofwy/ss-bash](https://github.com/hellofwy/ss-bash)

这个版本是个人自用，修改了部分内容。

* 因为本来自用的VPS就有iptables规则，原版启用后iptables 规则会有错。所以直接固定了sslib.sh里面几个iptables规则（能力有限，端口只能用固定的，使用请修改sslib.sh里面的端口号）

* 为了Shadowsocks安全，启用了几个安全措施，比如静止访问本地127.0.0.1，还有以suser用户运行，及添加了禁止非WEB流量的iptables规则,还有就是输入日志


#### 使用说明

##### 安装Shadowsocks(Debian / Ubuntu:)

apt-get install python-pip

pip install shadowsocks

##### 添加suser用户

adduser --system --disabled-password --disabled-login --no-create-home suser

##### 非root用户使用1024以下端口

apt-get install setcap

setcap 'cap_net_bind_service=+ep' /usr/bin/ss-server

##### iptables规则

[常用iptables安全规则](https://github.com/shijunyi/ss-bash/iptables)

##### 安装

git clone https://github.com/shijunyi/ss-bash

##### 首次运行时，先新建用户

例如新用户端口为88，89，密码为passwd，流量限制为100GB，执行：

sudo ss-bash/ssadmin.sh add 88 passwd 100G

sudo ss-bash/ssadmin.sh add 89 passwd 100G

##### 启动ssserver

sudo ss-bash/ssadmin.sh start

[更多ss-bash说明](https://github.com/hellofwy/ss-bash/wiki)

[Shadowsocks安全说明](https://github.com/shadowsocks/shadowsocks/wiki/Securing-Public-Shadowsocks-Server)
