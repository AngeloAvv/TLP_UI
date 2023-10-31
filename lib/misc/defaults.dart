import 'package:tlp_ui/models/tlp_entry/tlp_entry.dart';

class Defaults {
  const Defaults._();

  static const general = 'general';
  static const audio = 'audio';
  static const battery = 'battery';
  static const driveBay = 'drive_bay';
  static const storage = 'storage';
  static const disks = 'disks';
  static const filesystem = 'filesystem';
  static const graphics = 'graphics';
  static const kernel = 'kernel';
  static const network = 'network';
  static const platform = 'platform';
  static const processor = 'processor';
  static const radio = 'radio';
  static const deviceSwitching = 'device_switching';
  static const deviceWizard = 'device_wizard';
  static const power = 'power';
  static const usb = 'usb';

  // Operation (https://linrunner.de/tlp/settings/operation.html)
  static const tlpEnable = 'TLP_ENABLE';
  static const tlpWarnLevel = 'TLP_WARN_LEVEL';
  static const tlpDefaultMode = 'TLP_DEFAULT_MODE';
  static const tlpPersistentDefault = 'TLP_PERSISTENT_DEFAULT';
  static const tlpPsIgnore = 'TLP_PS_IGNORE';

  // Audio (https://linrunner.de/tlp/settings/audio.html)
  static const soundPowerSaveOnAc = 'SOUND_POWER_SAVE_ON_AC';
  static const soundPowerSaveOnBat = 'SOUND_POWER_SAVE_ON_BAT';
  static const soundPowerSaveController = 'SOUND_POWER_SAVE_CONTROLLER';

  // Battery Care (https://linrunner.de/tlp/settings/battery.html)
  static const startChargeThreshBat0 = 'START_CHARGE_THRESH_BAT0';
  static const stopChargeThreshBat0 = 'STOP_CHARGE_THRESH_BAT0';
  static const startChargeThreshBat1 = 'START_CHARGE_THRESH_BAT1';
  static const stopChargeThreshBat1 = 'STOP_CHARGE_THRESH_BAT1';
  static const restoreThresholdsOnBattery = 'RESTORE_THRESHOLDS_ON_BAT';
  static const natacpiEnable = 'NATACPI_ENABLE';
  static const tpacpiEnable = 'TPACPI_ENABLE';
  static const tpsmapiEnable = 'TPSMAPI_ENABLE';

  // Drive Bay (https://linrunner.de/tlp/settings/bay.html)
  static const bayPoweroffOnAc = 'BAY_POWEROFF_ON_AC';
  static const bayPoweroffOnBat = 'BAY_POWEROFF_ON_BAT';
  static const bayDevice = 'BAY_DEVICE';

  // Disk and Controllers (https://linrunner.de/tlp/settings/disks.html)
  static const disksDevices = 'DISK_DEVICES';
  static const diskApmLevelOnAc = 'DISK_APM_LEVEL_ON_AC';
  static const diskApmLevelOnBat = 'DISK_APM_LEVEL_ON_BAT';
  static const diskApmClassDenylist = 'DISK_APM_CLASS_DENYLIST';
  static const diskSpindownTimeoutOnAc = 'DISK_SPINDOWN_TIMEOUT_ON_AC';
  static const diskSpindownTimeoutOnBat = 'DISK_SPINDOWN_TIMEOUT_ON_BAT';
  static const diskIosched = 'DISK_IOSCHED';
  static const sataLinkpwrOnAc = 'SATA_LINKPWR_ON_AC';
  static const sataLinkpwrOnBat = 'SATA_LINKPWR_ON_BAT';
  static const sataLinkpwrDenylist = 'SATA_LINKPWR_DENYLIST';
  static const ahciRuntimePmOnAc = 'AHCI_RUNTIME_PM_ON_AC';
  static const ahciRuntimePmOnBat = 'AHCI_RUNTIME_PM_ON_BAT';
  static const ahciRuntimePmTimeout = 'AHCI_RUNTIME_PM_TIMEOUT';

  // File System (https://linrunner.de/tlp/settings/filesystem.html)
  static const diskIdleSecsOnAc = 'DISK_IDLE_SECS_ON_AC';
  static const diskIdleSecsOnBat = 'DISK_IDLE_SECS_ON_BAT';
  static const maxLostWorkSecsOnAc = 'MAX_LOST_WORK_SECS_ON_AC';
  static const maxLostWorkSecsOnBat = 'MAX_LOST_WORK_SECS_ON_BAT';

  // Graphics (https://linrunner.de/tlp/settings/graphics.html)
  static const intelGpuMinFreqOnAc = 'INTEL_GPU_MIN_FREQ_ON_AC';
  static const intelGpuMinFreqOnBat = 'INTEL_GPU_MIN_FREQ_ON_BAT';
  static const intelGpuMaxFreqOnAc = 'INTEL_GPU_MAX_FREQ_ON_AC';
  static const intelGpuMaxFreqOnBat = 'INTEL_GPU_MAX_FREQ_ON_BAT';
  static const intelGpuBoostFreqOnAc = 'INTEL_GPU_BOOST_FREQ_ON_AC';
  static const intelGpuBoostFreqOnBat = 'INTEL_GPU_BOOST_FREQ_ON_BAT';
  static const radeonDpmPerfLevelOnAc = 'RADEON_DPM_PERF_LEVEL_ON_AC';
  static const radeonDpmPerfLevelOnBat = 'RADEON_DPM_PERF_LEVEL_ON_BAT';
  static const radeonDpmStateOnAc = 'RADEON_DPM_STATE_ON_AC';
  static const radeonDpmStateOnBat = 'RADEON_DPM_STATE_ON_BAT';
  static const radeonPowerProfileOnAc = 'RADEON_POWER_PROFILE_ON_AC';
  static const radeonPowerProfileOnBat = 'RADEON_POWER_PROFILE_ON_BAT';

  // Kernel (https://linrunner.de/tlp/settings/kernel.html)
  static const nmiWatchdog = 'NMI_WATCHDOG';

  // Networking (https://linrunner.de/tlp/settings/network.html)
  static const wifiPwrOnAc = 'WIFI_PWR_ON_AC';
  static const wifiPwrOnBat = 'WIFI_PWR_ON_BAT';
  static const wolDisable = 'WOL_DISABLE';

  // Platform (https://linrunner.de/tlp/settings/platform.html)
  static const platformProfileOnAc = 'PLATFORM_PROFILE_ON_AC';
  static const platformProfileOnBat = 'PLATFORM_PROFILE_ON_BAT';
  static const memSleepOnAc = 'MEM_SLEEP_ON_AC';
  static const memSleepOnBat = 'MEM_SLEEP_ON_BAT';

  // Processor (https://linrunner.de/tlp/settings/processor.html)
  static const cpuDriverOpmodeOnAc = 'CPU_DRIVER_OPMODE_ON_AC';
  static const cpuDriverOpmodeOnBat = 'CPU_DRIVER_OPMODE_ON_BAT';
  static const cpuScalingGovernorOnAc = 'CPU_SCALING_GOVERNOR_ON_AC';
  static const cpuScalingGovernorOnBat = 'CPU_SCALING_GOVERNOR_ON_BAT';
  static const cpuScalingMinFreqOnAc = 'CPU_SCALING_MIN_FREQ_ON_AC';
  static const cpuScalingMinFreqOnBat = 'CPU_SCALING_MIN_FREQ_ON_BAT';
  static const cpuScalingMaxFreqOnAc = 'CPU_SCALING_MAX_FREQ_ON_AC';
  static const cpuScalingMaxFreqOnBat = 'CPU_SCALING_MAX_FREQ_ON_BAT';
  static const cpuEneregyPerfPolicyOnAc = 'CPU_ENERGY_PERF_POLICY_ON_AC';
  static const cpuEneregyPerfPolicyOnBat = 'CPU_ENERGY_PERF_POLICY_ON_BAT';
  static const cpuMinPerfOnAc = 'CPU_MIN_PERF_ON_AC';
  static const cpuMinPerfOnBat = 'CPU_MIN_PERF_ON_BAT';
  static const cpuMaxPerfOnAc = 'CPU_MAX_PERF_ON_AC';
  static const cpuMaxPerfOnBat = 'CPU_MAX_PERF_ON_BAT';
  static const cpuBoostOnAc = 'CPU_BOOST_ON_AC';
  static const cpuBoostOnBat = 'CPU_BOOST_ON_BAT';
  static const cpuHwpDynBoostOnAc = 'CPU_HWP_DYN_BOOST_ON_AC';
  static const cpuHwpDynBoostOnBat = 'CPU_HWP_DYN_BOOST_ON_BAT';

  // Radio Device Switching (https://linrunner.de/tlp/settings/radio.html)
  static const restoreDeviceStateOnStartup = 'RESTORE_DEVICE_STATE_ON_STARTUP';
  static const devicesToDisableOnStartup = 'DEVICES_TO_DISABLE_ON_STARTUP';
  static const devicesToEnableOnStartup = 'DEVICES_TO_ENABLE_ON_STARTUP';
  static const devicesToDisableOnShutdown = 'DEVICES_TO_DISABLE_ON_SHUTDOWN';
  static const devicesToEnableOnShutdown = 'DEVICES_TO_ENABLE_ON_SHUTDOWN';
  static const devicesToEnableOnAc = 'DEVICES_TO_ENABLE_ON_AC';
  static const devicesToDisableOnBat = 'DEVICES_TO_DISABLE_ON_BAT';
  static const devicesToDisableOnBatNotInUse =
      'DEVICES_TO_DISABLE_ON_BAT_NOT_IN_USE';

  // Radio Device Wizard (https://linrunner.de/tlp/settings/rdw.html)
  static const devicesToDisableOnLanConnect =
      'DEVICES_TO_DISABLE_ON_LAN_CONNECT';
  static const devicesToDisableOnWifiConnect =
      'DEVICES_TO_DISABLE_ON_WIFI_CONNECT';
  static const devicesToDisableOnWwanConnect =
      'DEVICES_TO_DISABLE_ON_WWAN_CONNECT';
  static const devicesToEnableOnLanDisconnect =
      'DEVICES_TO_ENABLE_ON_LAN_DISCONNECT';
  static const devicesToEnableOnWifiDisconnect =
      'DEVICES_TO_ENABLE_ON_WIFI_DISCONNECT';
  static const devicesToEnableOnWwanDisconnect =
      'DEVICES_TO_ENABLE_ON_WWAN_DISCONNECT';
  static const devicesToEnableOnDock = 'DEVICES_TO_ENABLE_ON_DOCK';
  static const devicesToDisableOnDock = 'DEVICES_TO_DISABLE_ON_DOCK';
  static const devicesToEnableOnUndock = 'DEVICES_TO_ENABLE_ON_UNDOCK';
  static const devicesToDisableOnUndock = 'DEVICES_TO_DISABLE_ON_UNDOCK';

  // Runtime Power Management and ASPM (https://linrunner.de/tlp/settings/runtimepm.html)
  static const runtimePmOnAc = 'RUNTIME_PM_ON_AC';
  static const runtimePmOnBat = 'RUNTIME_PM_ON_BAT';
  static const runtimePmDenylist = 'RUNTIME_PM_DENYLIST';
  static const runtimePmDriverDenylist = 'RUNTIME_PM_DRIVER_DENYLIST';
  static const runtimePmEnable = 'RUNTIME_PM_ENABLE';
  static const runtimePmDisable = 'RUNTIME_PM_DISABLE';
  static const pcieAspmOnAc = 'PCIE_ASPM_ON_AC';
  static const pcieAspmOnBat = 'PCIE_ASPM_ON_BAT';

  // USB (https://linrunner.de/tlp/settings/usb.html)
  static const usbAutosuspend = 'USB_AUTOSUSPEND';
  static const usbDenylist = 'USB_DENYLIST';
  static const usbExcludeAudio = 'USB_EXCLUDE_AUDIO';
  static const usbExcludeBtusb = 'USB_EXCLUDE_BTUSB';
  static const usbExcludePhone = 'USB_EXCLUDE_PHONE';
  static const usbExcludePrinter = 'USB_EXCLUDE_PRINTER';
  static const usbExcludeWwan = 'USB_EXCLUDE_WWAN';
  static const usbAllowlist = 'USB_ALLOWLIST';
  static const usbAutosuspendDisableOnShutdown =
      'USB_AUTOSUSPEND_DISABLE_ON_SHUTDOWN';

  // Trace Mode (https://linrunner.de/tlp/settings/trace.html)
  static const tlpDebug = 'TLP_DEBUG';

  static const defaultConfiguration = [
    TLPEntry(key: tlpEnable, value: '1'),
    TLPEntry(key: tlpWarnLevel, value: '3'),
    TLPEntry(key: tlpPersistentDefault, value: '0'),
    TLPEntry(key: soundPowerSaveOnAc, value: '1'),
    TLPEntry(key: soundPowerSaveOnBat, value: '1'),
    TLPEntry(key: soundPowerSaveController, value: 'Y'),
    TLPEntry(key: restoreThresholdsOnBattery, value: '0'),
    TLPEntry(key: natacpiEnable, value: '1'),
    TLPEntry(key: tpacpiEnable, value: '1'),
    TLPEntry(key: tpsmapiEnable, value: '1'),
    TLPEntry(key: bayPoweroffOnAc, value: '0'),
    TLPEntry(key: bayPoweroffOnBat, value: '0'),
    TLPEntry(key: bayDevice, value: 'sr0'),
    TLPEntry(key: disksDevices, value: 'nvme0n1 sda'),
    TLPEntry(key: diskApmLevelOnAc, value: '254 254'),
    TLPEntry(key: diskApmLevelOnBat, value: '128 128'),
    TLPEntry(key: diskApmClassDenylist, value: 'usb ieee1394'),
    TLPEntry(key: diskIosched, value: 'keep'),
    TLPEntry(key: sataLinkpwrOnAc, value: 'med_power_with_dipm'),
    TLPEntry(key: sataLinkpwrOnBat, value: 'med_power_with_dipm'),
    TLPEntry(key: ahciRuntimePmOnAc, value: 'on'),
    TLPEntry(key: ahciRuntimePmOnBat, value: 'auto'),
    TLPEntry(key: ahciRuntimePmTimeout, value: '15'),
    TLPEntry(key: diskIdleSecsOnAc, value: '0'),
    TLPEntry(key: diskIdleSecsOnBat, value: '2'),
    TLPEntry(key: maxLostWorkSecsOnAc, value: '15'),
    TLPEntry(key: maxLostWorkSecsOnBat, value: '60'),
    TLPEntry(key: radeonDpmPerfLevelOnAc, value: 'auto'),
    TLPEntry(key: radeonDpmPerfLevelOnBat, value: 'auto'),
    TLPEntry(key: radeonPowerProfileOnAc, value: 'default'),
    TLPEntry(key: radeonPowerProfileOnBat, value: 'default'),
    TLPEntry(key: wifiPwrOnAc, value: 'off'),
    TLPEntry(key: wifiPwrOnBat, value: 'on'),
    TLPEntry(key: wolDisable, value: 'Y'),
    TLPEntry(key: cpuEneregyPerfPolicyOnAc, value: 'balance_performance'),
    TLPEntry(key: cpuEneregyPerfPolicyOnBat, value: 'balance_power'),
    TLPEntry(key: restoreDeviceStateOnStartup, value: '0'),
    TLPEntry(key: runtimePmOnAc, value: 'on'),
    TLPEntry(key: runtimePmOnBat, value: 'auto'),
    TLPEntry(key: runtimePmDriverDenylist, value: 'mei_me nouveau radeon'),
    TLPEntry(key: pcieAspmOnAc, value: 'default'),
    TLPEntry(key: pcieAspmOnBat, value: 'default'),
    TLPEntry(key: usbAutosuspend, value: '1'),
    TLPEntry(key: usbExcludeAudio, value: '1'),
    TLPEntry(key: usbExcludeBtusb, value: '0'),
    TLPEntry(key: usbExcludePhone, value: '0'),
    TLPEntry(key: usbExcludePrinter, value: '1'),
    TLPEntry(key: usbExcludeWwan, value: '0'),
    TLPEntry(key: usbAutosuspendDisableOnShutdown, value: '0'),
  ];
}
