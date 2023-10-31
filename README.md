# TLP UI

<img align="center" src="https://raw.githubusercontent.com/AngeloAvv/TLP_UI/master/assets/welcome.png" width="350" alt="TLP UI welcome screenshot" border="0">
<img align="center" src="https://raw.githubusercontent.com/AngeloAvv/TLP_UI/master/assets/general.png" width="350" alt="TLP UI general screenshot" border="0">

TLP UI is a graphical user interface for TLP written in Flutter.

From the [project page](https://linrunner.de/tlp/):
TLP is a feature-rich command line utility for Linux, saving laptop battery power without the need
to delve deeper into technical details.
TLP’s default settings are already optimized for battery life and implement Powertop’s
recommendations out of the box. So you may just install and forget it.
Nevertheless TLP is highly customizable to fulfil your specific requirements.

[![Flutter CI](https://github.com/AngeloAvv/TLP_UI/actions/workflows/main.yml/badge.svg)](https://github.com/AngeloAvv/TLP_UI/actions/workflows/main.yml)
[![Star on GitHub](https://img.shields.io/github/stars/AngeloAvv/TLP_UI.svg?style=flat&logo=github&colorB=deeppink&label=stars)](https://github.com/AngeloAvv/TLP_UI)
[![License: GPL](https://img.shields.io/badge/license-GPL-purple.svg)](https://opensource.org/licenses/GPL-3.0)
[![](https://img.shields.io/static/v1?label=Sponsor&message=%E2%9D%A4&logo=GitHub&color=%23fe8e86)](https://github.com/sponsors/AngeloAvv)

If you want to support this project, please leave a star, share this project, or consider donating
through [Github Sponsor](https://github.com/sponsors/AngeloAvv).

## Getting Started

Download the latest binaries under the release section.

## Features
* Supports TLP until version 1.6
* Automatically detects TLP configuration file from the default location
* Custom configuration can be loaded from a file
* Custom configuration can be saved to a file without running the app as super user

| Key                                  | Category                 | 
|:-------------------------------------|:-------------------------|
| TLP_ENABLE                           | Operation                | 
| TLP_WARN_LEVEL                       | Operation                | 
| TLP_DEFAULT_MODE                     | Operation                | 
| TLP_PERSISTENT_DEFAULT               | Operation                | 
| TLP_PS_IGNORE                        | Operation                | 
| SOUND_POWER_SAVE_ON_AC               | Audio                    | 
| SOUND_POWER_SAVE_ON_BAT              | Audio                    | 
| SOUND_POWER_SAVE_CONTROLLER          | Audio                    | 
| START_CHARGE_THRESH_BAT0             | Battery Care             |
| STOP_CHARGE_THRESH_BAT0              | Battery Care             |
| START_CHARGE_THRESH_BAT1             | Battery Care             |
| STOP_CHARGE_THRESH_BAT1              | Battery Care             |
| RESTORE_THRESHOLDS_ON_BAT            | Battery Care             |
| NATACPI_ENABLE                       | Battery Care             |
| TPACPI_ENABLE                        | Battery Care             |
| TPSMAPI_ENABLE                       | Battery Care             |
| BAY_POWEROFF_ON_AC                   | Drive Bay                |
| BAY_POWEROFF_ON_BAT                  | Drive Bay                |
| BAY_DEVICE                           | Drive Bay                |
| DISK_DEVICES                         | Disk and Controllers     |
| DISK_APM_CLASS_DENYLIST              | Disk and Controllers     |
| DISK_IOSCHED                         | Disk and Controllers     |
| SATA_LINKPWR_ON_AC                   | Disk and Controllers     |
| SATA_LINKPWR_ON_BAT                  | Disk and Controllers     |
| SATA_LINKPWR_DENYLIST                | Disk and Controllers     |
| AHCI_RUNTIME_PM_ON_AC                | Disk and Controllers     |
| AHCI_RUNTIME_PM_ON_BAT               | Disk and Controllers     |
| AHCI_RUNTIME_PM_TIMEOUT              | Disk and Controllers     |
| DISK_IDLE_SECS_ON_AC                 | File System              |
| DISK_IDLE_SECS_ON_BAT                | File System              |
| MAX_LOST_WORK_SECS_ON_AC             | File System              |
| MAX_LOST_WORK_SECS_ON_BAT            | File System              |
| INTEL_GPU_MIN_FREQ_ON_AC             | Graphics                 |
| INTEL_GPU_MIN_FREQ_ON_BAT            | Graphics                 |
| INTEL_GPU_MAX_FREQ_ON_AC             | Graphics                 |
| INTEL_GPU_MAX_FREQ_ON_BAT            | Graphics                 |
| INTEL_GPU_BOOST_FREQ_ON_AC           | Graphics                 |
| INTEL_GPU_BOOST_FREQ_ON_BAT          | Graphics                 |
| RADEON_DPM_PERF_LEVEL_ON_AC          | Graphics                 |
| RADEON_DPM_PERF_LEVEL_ON_BAT         | Graphics                 |
| RADEON_DPM_STATE_ON_AC               | Graphics                 |
| RADEON_DPM_STATE_ON_BAT              | Graphics                 |
| RADEON_POWER_PROFILE_ON_AC           | Graphics                 |
| RADEON_POWER_PROFILE_ON_BAT          | Graphics                 |
| NMI_WATCHDOG                         | Kernel                   |
| WIFI_PWR_ON_AC                       | Networking               |
| WIFI_PWR_ON_BAT                      | Networking               |
| WOL_DISABLE                          | Networking               |
| PLATFORM_PROFILE_ON_AC               | Platform                 |
| PLATFORM_PROFILE_ON_BAT              | Platform                 |
| MEM_SLEEP_ON_AC                      | Platform                 |
| MEM_SLEEP_ON_BAT                     | Platform                 |
| CPU_DRIVER_OPMODE_ON_AC              | Processor                |
| CPU_DRIVER_OPMODE_ON_BAT             | Processor                |
| CPU_SCALING_GOVERNOR_ON_AC           | Processor                |
| CPU_SCALING_GOVERNOR_ON_BAT          | Processor                |
| CPU_SCALING_MIN_FREQ_ON_AC           | Processor                |
| CPU_SCALING_MIN_FREQ_ON_BAT          | Processor                |
| CPU_SCALING_MAX_FREQ_ON_AC           | Processor                |
| CPU_SCALING_MAX_FREQ_ON_BAT          | Processor                |
| CPU_ENERGY_PERF_POLICY_ON_AC         | Processor                |
| CPU_ENERGY_PERF_POLICY_ON_BAT        | Processor                |
| CPU_MIN_PERF_ON_AC                   | Processor                |
| CPU_MIN_PERF_ON_BAT                  | Processor                |
| CPU_MAX_PERF_ON_AC                   | Processor                |
| CPU_MAX_PERF_ON_BAT                  | Processor                |
| CPU_BOOST_ON_AC                      | Processor                |
| CPU_BOOST_ON_BAT                     | Processor                |
| CPU_HWP_DYN_BOOST_ON_AC              | Processor                |
| CPU_HWP_DYN_BOOST_ON_BAT             | Processor                |
| RESTORE_DEVICE_STATE_ON_STARTUP      | Radio Device Switching   |
| DEVICES_TO_DISABLE_ON_STARTUP        | Radio Device Switching   |
| DEVICES_TO_ENABLE_ON_STARTUP         | Radio Device Switching   |
| DEVICES_TO_DISABLE_ON_SHUTDOWN       | Radio Device Switching   |
| DEVICES_TO_ENABLE_ON_SHUTDOWN        | Radio Device Switching   |
| DEVICES_TO_ENABLE_ON_AC              | Radio Device Switching   |
| DEVICES_TO_DISABLE_ON_BAT            | Radio Device Switching   |
| DEVICES_TO_DISABLE_ON_BAT_NOT_IN_USE | Radio Device Switching   |
| DEVICES_TO_DISABLE_ON_LAN_CONNECT    | Radio Device Wizard      |
| DEVICES_TO_DISABLE_ON_WIFI_CONNECT   | Radio Device Wizard      |
| DEVICES_TO_DISABLE_ON_WWAN_CONNECT   | Radio Device Wizard      |
| DEVICES_TO_ENABLE_ON_LAN_DISCONNECT  | Radio Device Wizard      |
| DEVICES_TO_ENABLE_ON_WIFI_DISCONNECT | Radio Device Wizard      |
| DEVICES_TO_ENABLE_ON_WWAN_DISCONNECT | Radio Device Wizard      |
| DEVICES_TO_ENABLE_ON_DOCK            | Radio Device Wizard      |
| DEVICES_TO_DISABLE_ON_DOCK           | Radio Device Wizard      |
| DEVICES_TO_ENABLE_ON_UNDOCK          | Radio Device Wizard      |
| DEVICES_TO_DISABLE_ON_UNDOCK         | Radio Device Wizard      |
| RUNTIME_PM_ON_AC                     | Runtime Power Management |
| RUNTIME_PM_ON_BAT                    | Runtime Power Management |
| RUNTIME_PM_DENYLIST                  | Runtime Power Management |
| RUNTIME_PM_DRIVER_DENYLIST           | Runtime Power Management |
| RUNTIME_PM_ENABLE                    | Runtime Power Management |
| RUNTIME_PM_DISABLE                   | Runtime Power Management |
| PCIE_ASPM_ON_AC                      | Runtime Power Management |
| PCIE_ASPM_ON_BAT                     | Runtime Power Management |
| USB_AUTOSUSPEND                      | USB                      |
| USB_DENYLIST                         | USB                      |
| USB_EXCLUDE_AUDIO                    | USB                      |
| USB_EXCLUDE_BTUSB                    | USB                      |
| USB_EXCLUDE_PHONE                    | USB                      |
| USB_EXCLUDE_PRINTER                  | USB                      |
| USB_EXCLUDE_WWAN                     | USB                      |
| USB_ALLOWLIST                        | USB                      |
| USB_AUTOSUSPEND_DISABLE_ON_SHUTDOWN  | USB                      |
| TLP_DEBUG                            | Trace Mode               |

## Screenshots

<img align="center" src="https://raw.githubusercontent.com/AngeloAvv/TLP_UI/master/assets/welcome.png" width="350" alt="TLP UI welcome screenshot" border="0">
<img align="center" src="https://raw.githubusercontent.com/AngeloAvv/TLP_UI/master/assets/general.png" width="350" alt="TLP UI general screenshot" border="0">
<img align="center" src="https://raw.githubusercontent.com/AngeloAvv/TLP_UI/master/assets/audio.png" width="350" alt="TLP UI audio screenshot" border="0">
<img align="center" src="https://raw.githubusercontent.com/AngeloAvv/TLP_UI/master/assets/battery.png" width="350" alt="TLP UI battery screenshot" border="0">
<img align="center" src="https://raw.githubusercontent.com/AngeloAvv/TLP_UI/master/assets/drive_bay.png" width="350" alt="TLP UI drive bay screenshot" border="0">
<img align="center" src="https://raw.githubusercontent.com/AngeloAvv/TLP_UI/master/assets/storage.png" width="350" alt="TLP UI storage screenshot" border="0">
<img align="center" src="https://raw.githubusercontent.com/AngeloAvv/TLP_UI/master/assets/graphics.png" width="350" alt="TLP UI graphics screenshot" border="0">
<img align="center" src="https://raw.githubusercontent.com/AngeloAvv/TLP_UI/master/assets/kernel.png" width="350" alt="TLP UI kernel screenshot" border="0">
<img align="center" src="https://raw.githubusercontent.com/AngeloAvv/TLP_UI/master/assets/network.png" width="350" alt="TLP UI network screenshot" border="0">
<img align="center" src="https://raw.githubusercontent.com/AngeloAvv/TLP_UI/master/assets/platform.png" width="350" alt="TLP UI platform screenshot" border="0">
<img align="center" src="https://raw.githubusercontent.com/AngeloAvv/TLP_UI/master/assets/processor.png" width="350" alt="TLP UI processor screenshot" border="0">
<img align="center" src="https://raw.githubusercontent.com/AngeloAvv/TLP_UI/master/assets/radio.png" width="350" alt="TLP UI radio screenshot" border="0">
<img align="center" src="https://raw.githubusercontent.com/AngeloAvv/TLP_UI/master/assets/power.png" width="350" alt="TLP UI power screenshot" border="0">
<img align="center" src="https://raw.githubusercontent.com/AngeloAvv/TLP_UI/master/assets/usb.png" width="350" alt="TLP UI usb screenshot" border="0">

## License

TLP UI is available under the GNU General Public License Version 3. See the COPYING file for more
info.