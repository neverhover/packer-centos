RELEASE=`rpm -q --qf "%{VERSION}" $(rpm -q --whatprovides redhat-release)`
#rpm -Uvh http://mirrors.aliyun.com/epel/epel-release-latest-${RELEASE}.noarch.rpm
yum -y install wget
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-6.repo 
yum makecache
#yum -y install gcc make gcc-c++ kernel-devel-`uname -r` perl wget bzip2 curl
yum install "@Chinese Support" 
yum -y update
reboot
sleep 60
