# 
#
#
FILE=env.tar.gz
set -ex
### install env pkgs ###
cd /opt/pkgs
if [ ! -f ${FILE} ]; then
	echo "there is no env pkgs in /opt/pkgs"
	exit 0
fi
tar xvf env.tar.gz

### install env pkgs ###
cd env
./soft_install.sh install -d -f

### cleanup ###
cd /opt
rm -rf /opt/pkgs/${FILE}

