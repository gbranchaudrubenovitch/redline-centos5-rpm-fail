#!/bin/sh
if [[ $1 == 1 ]]
then
	# add the service to system startup & create the logs folder
	/sbin/chkconfig --add ${RPM_PACKAGE_NAME}
	/sbin/chkconfig ${RPM_PACKAGE_NAME} on
	mkdir -p /some/${RPM_PACKAGE_NAME}/logs
	chown ${RPM_PACKAGE_NAME}:${RPM_PACKAGE_NAME} /some/${RPM_PACKAGE_NAME}/logs
fi
