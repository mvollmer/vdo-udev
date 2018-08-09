This is a hack to start VDO volumes as soon as their backing devices
are detected by udev.

This helps because normally systemd starts vdo.service after
local-fs.target and thus one can't have "auto" entries in fstab that
refer to VDO volumes.

With this hack, the VDO volume is started as soon as possible.
However, if starting takes a really long time (because the volume
needs repairing, say), mounting the fstab entry will time out and the
boot will still fail.
