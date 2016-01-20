showcase for issue with redline 1.2.2 on old rpm
===========

This is the simplest java app I could build that reproduces an issue we have with redline 1.2.2 (consumed through the nebula.ospackage gradle plugin)
and `rpm version 4.4.2.3` on a CentOS release 5.8 machine.

See [Redline Issue #97](https://github.com/craigwblake/redline/issues/97)

## Prerequisites
1. Install Java 8

## Build & install the rpm
1. `gradlew buildRpm`
2. `rpm -vvqip  ./build/distributions/main-1.0.1-1.noarch.rpm`


## Some outputs
    []$ rpm --version
    RPM version 4.4.2.3

    []$ rpm -vvqip  ./build/distributions/main-1.0.1-1.noarch.rpm
    D: Expected size:         5230 = lead(96)+sigs(180)+pad(4)+data(4950)
    D:   Actual size:         5230
    error: ./build/distributions/main-1.0.1-1.noarch.rpm: headerRead failed: Header sanity check: OK
    D: May free Score board((nil))
