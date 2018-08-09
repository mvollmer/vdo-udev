This is a hack to start VDO volumes as soon as their backing devices
are detected by udev.

This helps because normally systemd starts vdo.service after
local-fs.target and thus one can't have "auto" entries in fstab that
refer to VDO volumes.
