#!/bin/sh
# Removing system user/group

# Scriptlet syntax: http://fedoraproject.org/wiki/Packaging:ScriptletSnippets#Syntax
# $1 == 1 is upgrade and $1 == 0 is uninstall
if [[ $1 == 0 ]]
then
    if getent passwd | grep -q "^${RPM_PACKAGE_NAME}:";
    then
        echo "Deleting system user: ${RPM_PACKAGE_NAME}"
        userdel ${RPM_PACKAGE_NAME}
    fi
    if getent group | grep -q "^${RPM_PACKAGE_NAME}:" ;
    then
        echo "Deleting system group: ${RPM_PACKAGE_NAME}"
        groupdel ${RPM_PACKAGE_NAME}
    fi
fi
