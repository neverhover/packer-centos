install
cdrom

lang zh_CN.UTF-8
keyboard us
timezone Asia/Shanghai

network --onboot yes --bootproto=dhcp --device=eth0 --activate --noipv6

rootpw (portal)123,./
authconfig --enableshadow --passalgo=sha512
user --name=vagrant --groups=vagrant --password=portal

firewall --disabled
selinux --disabled
firstboot --disabled

bootloader --location=mbr
text
skipx

logging --level=info
zerombr
clearpart --all --initlabel
autopart

reboot


%packages --nobase
@Core
sudo
openssh-clients
openssh-server
%end

%post --log=/root/post_install.log
echo "portal" | passwd vagrant --stdin
chmod 777 -R /opt
# Add vagrant to sudoers
/bin/echo "vagrant        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers.d/vagrant
/bin/chmod 0440 /etc/sudoers.d/vagrant
/bin/sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

%end
