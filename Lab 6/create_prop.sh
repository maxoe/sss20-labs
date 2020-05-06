#!/bin/sh
[ -d ~/.jpf ] || mkdir ~/.jpf
if [ -f ~/.jpf/site.properties ]
then
	echo "*** ~/.jpf/site.properties file exists; remove it to create a new one. ***"
	exit
fi
cat > ~/.jpf/site.properties <<\EOF
jpf-home=${user.home}/jpf
jpf-core=${jpf-home}/jpf-core
jpf-nas=${jpf-home}/jpf-nas
extensions=${jpf-core}
extensions+=,${jpf-nas}
EOF
