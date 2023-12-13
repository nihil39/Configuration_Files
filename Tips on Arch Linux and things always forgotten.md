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
This setting should remain even when the pc is switched off.

There is also [this](https://github.com/laurento/gnome-shell-extension-ideapad). gnome extension 

Read the instructions, you have to create /etc/sudoers.d/ideapad file

## Beelink SER 5 MAX mini PC

https://www.reddit.com/r/MiniPCs/comments/17h5qab/noise_complaint_beelink_ser5_mini_pc_with_amd/?rdt=61660

I was able to adjust some of the settings in the BIOS under "Smart Fan Control" and it helped a lot. It seems that the fan curve is really aggressive. Change the max temperature to 95, and set the "Start PWM" value to something like 30 or 40 (the scale is 0-128, min is 30 according to Beelink). Use the same settings for both fans.

You can also change the 54W TDP to 45W if you're okay with losing ~3-5% performance in multi-core workloads. You can do this through Advanced -> AMD CBS -> NBIO Configuration -> SMU Configuration -> System Configuration (or something like like that). There's two options: Balanced (which is 45W), and Performance (which is 54W). I benchmarked it before & after and didn't notice much difference in performance.

## Strange behaviour of GNOME 45 with former Activities/Desktop bar

https://www.reddit.com/r/gnome/comments/178n27h/gnome_45_no_activities_button/

Install gnome-icon-theme-extras


