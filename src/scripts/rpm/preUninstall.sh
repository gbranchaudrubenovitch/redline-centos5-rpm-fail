#!/bin/sh
# stop the service and remove it from the system startup

# Scriptlet syntax: http://fedoraproject.org/wiki/Packaging:ScriptletSnippets#Syntax
# $1 == 1 is upgrade and $1 == 0 is uninstall
if [[ $1 == 0 ]]
then
    /sbin/service ${RPM_PACKAGE_NAME} stop
    /sbin/chkconfig --del ${RPM_PACKAGE_NAME}
fi
