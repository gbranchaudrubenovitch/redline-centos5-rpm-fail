showcase for issue with redline 1.2.2 on old rpm
===========

This is the simplest java app I could build that reproduces an issue we have with redline 1.2.2 (consumed through the nebula.ospackage gradle plugin)
and `rpm version 4.4.2.3` on a CentOS release 5.8 machine.

## Prerequisites
1. Install Java 8

## Build & install the rpm
1. `gradlew buildRpm`
2. `yum install ./build/distributions/main-1.0.1-1.noarch.rpm`

## What happens on my old Centos 5 machine
    rpmts_HdrFromFdno: headerRead failed: Header sanity check: OK
    Traceback (most recent call last):
    File "/usr/bin/yum", line 29, in ?
       yummain.user_main(sys.argv[1:], exit_code=True)
    File "/usr/share/yum-cli/yummain.py", line 309, in user_main
     errcode = main(args)
    File "/usr/share/yum-cli/yummain.py", line 178, in main
      result, resultmsgs = base.doCommands()
    File "/usr/share/yum-cli/cli.py", line 349, in doCommands
      return self.yum_cli_commands[self.basecmd].doCommand(self, self.basecmd, self.extcmds)
    File "/usr/share/yum-cli/yumcommands.py", line 677, in doCommand
      return base.localInstall(filelist=extcmds, updateonly=updateonly)
    File "/usr/share/yum-cli/cli.py", line 717, in localInstall
      txmbrs = self.installLocal(pkg, updateonly=updateonly)
    File "/usr/lib/python2.4/site-packages/yum/__init__.py", line 3123, in installLocal
      po = YumLocalPackage(ts=self.rpmdb.readOnlyTS(), filename=pkg)
    File "/usr/lib/python2.4/site-packages/yum/packages.py", line 1568, in __init__
      hdr = rpmUtils.miscutils.hdrFromPackage(ts, self.localpath)
    File "/usr/lib/python2.4/site-packages/rpmUtils/miscutils.py", line 406, in hdrFromPackage
      hdr = ts.hdrFromFdno(fdno)
