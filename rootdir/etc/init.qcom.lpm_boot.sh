#!/system/bin/sh

# Allow persistent usb charging disabling
# User needs to set usb charging disabled in persist.usb.chgdisabled
echo 1 > /sys/devices/system/cpu/cpu1/online
echo 1 > /sys/module/rpm_resources/enable_low_power/L2_cache
echo 1 > /sys/module/rpm_resources/enable_low_power/pxo
echo 1 > /sys/module/rpm_resources/enable_low_power/vdd_dig
echo 1 > /sys/module/rpm_resources/enable_low_power/vdd_mem
echo 1 > /sys/module/pm_8x60/modes/cpu0/power_collapse/suspend_enabled
echo 1 > /sys/module/pm_8x60/modes/cpu1/power_collapse/suspend_enabled
echo 0 > /sys/module/pm_8x60/modes/cpu0/standalone_power_collapse/suspend_enabled
echo 0 > /sys/module/pm_8x60/modes/cpu1/standalone_power_collapse/suspend_enabled
echo 0 > /sys/module/pm_8x60/modes/cpu0/standalone_power_collapse/idle_enabled
echo 0 > /sys/module/pm_8x60/modes/cpu1/standalone_power_collapse/idle_enabled
echo 0 > /sys/module/pm_8x60/modes/cpu0/power_collapse/idle_enabled
echo 0 > /sys/module/pm_8x60/modes/cpu1/power_collapse/idle_enabled
echo "powersave" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo "powersave" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
echo 0 > /sys/devices/system/cpu/cpu1/online
