https://fostips.com/enable-alt-tab-window-thumbnail-switching-for-all-workspaces-in-gnome/ ← to have icons in alt tab on gnome

    xdg-mime default org.gnome.Nautilus.desktop inode/directory  
To open folder with files and not with terminal, see https://discourse.gnome.org/t/why-doesnt-default-applications-have-file-manager/14167 for more information

## NVIDIA and Gnome 44

Use those solutions

https://forums.developer.nvidia.com/t/trouble-suspending-with-510-39-01-linux-5-16-0-freezing-of-tasks-failed-after-20-009-seconds/200933/12
https://bbs.archlinux.org/viewtopic.php?id=277713

but first enable kernel mode set and ``options nvidia NVreg_PreserveVideoMemoryAllocations=1 NVreg_TemporaryFilePath=/var/tmp``


## Lenovo Ideapad battery conservation mode
To save battery and stop chargin percentage at 80% when on AC power


``cat /sys/bus/platform/drivers/ideapad_acpi/VPC2004\:00/conservation_mode`` if 0 is disabled, if 1 is enabled


``echo 0 or 1 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode`` to set the value 0 or 1
