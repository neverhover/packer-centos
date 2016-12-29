# 
#
#
FILE=update.tar.bz2
set -ex
### install env pkgs ###
cd /opt/pkgs
if [ ! -f ${FILE} ]; then
	echo "there is no update pkg in /opt/pkgs"
	exit 0
fi
tar xvf ${FILE} -C /tmp/

cd /tmp/
./install_all.sh norestart

### cleanup ###
rm -rf /opt/pkgs/${FILE}
rm -rf /tmp/install_all.sh
rm -rf /tmp/natshell_pkg.tar.bz2
echo "work done"
exit 0
