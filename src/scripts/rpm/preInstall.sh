#!/bin/sh
# Adding system user/group
if ! getent group | grep -q "^${RPM_PACKAGE_NAME}:" ;
then
    echo "Creating system group: ${RPM_PACKAGE_NAME}"
    groupadd -r ${RPM_PACKAGE_NAME}
fi
if ! getent passwd | grep -q "^${RPM_PACKAGE_NAME}:";
then
    echo "Creating system user: ${RPM_PACKAGE_NAME}"
    useradd --gid ${RPM_PACKAGE_NAME} -d /some/${RPM_PACKAGE_NAME}/ -r -c "${RPM_PACKAGE_NAME} daemon-user" ${RPM_PACKAGE_NAME}
fi
