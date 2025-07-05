import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/blocs/configuration/configuration_bloc.dart';
import 'package:tlp_ui/features/routing/app_router.dart';
import 'package:tlp_ui/features/theme/cubits/theme_cubit.dart';
import 'package:tlp_ui/features/theme/models/theme.dart';
import 'package:tlp_ui/misc/constants.dart';
import 'package:tlp_ui/misc/defaults.dart';
import 'package:tlp_ui/models/tlp_configuration/tlp_configuration.dart';

/// Enter the Main documentation here
@RoutePage()
class MainPage extends StatefulWidget implements AutoRouteWrapper {
  final TLPConfiguration configuration;

  /// The constructor of the page.
  const MainPage(this.configuration, {super.key});

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<ConfigurationBloc>(
            create: (context) => ConfigurationBloc(
              configurationRepository: context.read(),
            ),
          ),
        ],
        child: this,
      );

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _formGeneral = FormGroup({
    Defaults.tlpEnable: FormControl<String>(),
    Defaults.tlpWarnLevel: FormControl<String>(),
    Defaults.tlpDefaultMode: FormControl<String>(),
    Defaults.tlpPersistentDefault: FormControl<String>(),
    Defaults.tlpPsIgnore: FormControl<String>(),
    Defaults.tlpDebug: FormControl<String>(),
  });

  final _formAudio = FormGroup({
    Defaults.soundPowerSaveOnAc: FormControl<String>(),
    Defaults.soundPowerSaveOnBat: FormControl<String>(),
    Defaults.soundPowerSaveController: FormControl<String>(),
  });

  final _formBattery = FormGroup({
    Defaults.startChargeThreshBat0: FormControl<String>(),
    Defaults.stopChargeThreshBat0: FormControl<String>(),
    Defaults.startChargeThreshBat1: FormControl<String>(),
    Defaults.stopChargeThreshBat1: FormControl<String>(),
    Defaults.restoreThresholdsOnBattery: FormControl<String>(),
    Defaults.natacpiEnable: FormControl<String>(),
    Defaults.tpacpiEnable: FormControl<String>(),
    Defaults.tpsmapiEnable: FormControl<String>(),
  });

  final _formDriveBay = FormGroup({
    Defaults.bayPoweroffOnAc: FormControl<String>(),
    Defaults.bayPoweroffOnBat: FormControl<String>(),
    Defaults.bayDevice: FormControl<String>(),
  });

  final _formDisks = FormGroup({
    Defaults.disksDevices: FormControl<String>(),
    Defaults.diskApmLevelOnAc: FormControl<String>(),
    Defaults.diskApmLevelOnBat: FormControl<String>(),
    Defaults.diskApmClassDenylist: FormControl<String>(),
    Defaults.diskSpindownTimeoutOnAc: FormControl<String>(),
    Defaults.diskSpindownTimeoutOnBat: FormControl<String>(),
    Defaults.diskIosched: FormControl<String>(),
    Defaults.sataLinkpwrOnAc: FormControl<String>(),
    Defaults.sataLinkpwrOnBat: FormControl<String>(),
    Defaults.sataLinkpwrDenylist: FormControl<String>(),
    Defaults.ahciRuntimePmOnAc: FormControl<String>(),
    Defaults.ahciRuntimePmOnBat: FormControl<String>(),
    Defaults.ahciRuntimePmTimeout: FormControl<String>(),
  });

  final _formFilesystem = FormGroup({
    Defaults.diskIdleSecsOnAc: FormControl<String>(),
    Defaults.diskIdleSecsOnBat: FormControl<String>(),
    Defaults.maxLostWorkSecsOnAc: FormControl<String>(),
    Defaults.maxLostWorkSecsOnBat: FormControl<String>(),
  });

  final _formGraphics = FormGroup({
    Defaults.intelGpuMinFreqOnAc: FormControl<String>(),
    Defaults.intelGpuMinFreqOnBat: FormControl<String>(),
    Defaults.intelGpuMaxFreqOnAc: FormControl<String>(),
    Defaults.intelGpuMaxFreqOnBat: FormControl<String>(),
    Defaults.intelGpuBoostFreqOnAc: FormControl<String>(),
    Defaults.intelGpuBoostFreqOnBat: FormControl<String>(),
    Defaults.radeonDpmPerfLevelOnAc: FormControl<String>(),
    Defaults.radeonDpmPerfLevelOnBat: FormControl<String>(),
    Defaults.radeonDpmStateOnAc: FormControl<String>(),
    Defaults.radeonDpmStateOnBat: FormControl<String>(),
    Defaults.radeonPowerProfileOnAc: FormControl<String>(),
    Defaults.radeonPowerProfileOnBat: FormControl<String>(),
  });

  final _formKernel = FormGroup({
    Defaults.nmiWatchdog: FormControl<String>(),
  });

  final _formNetwork = FormGroup({
    Defaults.wifiPwrOnAc: FormControl<String>(),
    Defaults.wifiPwrOnBat: FormControl<String>(),
    Defaults.wolDisable: FormControl<String>(),
  });

  final _formPlatform = FormGroup({
    Defaults.platformProfileOnAc: FormControl<String>(),
    Defaults.platformProfileOnBat: FormControl<String>(),
    Defaults.memSleepOnAc: FormControl<String>(),
    Defaults.memSleepOnBat: FormControl<String>(),
  });

  final _formProcessor = FormGroup({
    Defaults.cpuDriverOpmodeOnAc: FormControl<String>(),
    Defaults.cpuDriverOpmodeOnBat: FormControl<String>(),
    Defaults.cpuScalingGovernorOnAc: FormControl<String>(),
    Defaults.cpuScalingGovernorOnBat: FormControl<String>(),
    Defaults.cpuScalingMinFreqOnAc: FormControl<String>(),
    Defaults.cpuScalingMinFreqOnBat: FormControl<String>(),
    Defaults.cpuScalingMaxFreqOnAc: FormControl<String>(),
    Defaults.cpuScalingMaxFreqOnBat: FormControl<String>(),
    Defaults.cpuEneregyPerfPolicyOnAc: FormControl<String>(),
    Defaults.cpuEneregyPerfPolicyOnBat: FormControl<String>(),
    Defaults.cpuMinPerfOnAc: FormControl<String>(),
    Defaults.cpuMinPerfOnBat: FormControl<String>(),
    Defaults.cpuMaxPerfOnAc: FormControl<String>(),
    Defaults.cpuMaxPerfOnBat: FormControl<String>(),
    Defaults.cpuBoostOnAc: FormControl<String>(),
    Defaults.cpuBoostOnBat: FormControl<String>(),
    Defaults.cpuHwpDynBoostOnAc: FormControl<String>(),
    Defaults.cpuHwpDynBoostOnBat: FormControl<String>(),
  });

  final _formDeviceSwitching = FormGroup({
    Defaults.restoreDeviceStateOnStartup: FormControl<String>(),
    Defaults.devicesToDisableOnStartup: FormControl<String>(),
    Defaults.devicesToEnableOnStartup: FormControl<String>(),
    Defaults.devicesToDisableOnShutdown: FormControl<String>(),
    Defaults.devicesToEnableOnShutdown: FormControl<String>(),
    Defaults.devicesToEnableOnAc: FormControl<String>(),
    Defaults.devicesToDisableOnBat: FormControl<String>(),
    Defaults.devicesToDisableOnBatNotInUse: FormControl<String>(),
  });

  final _formDeviceWizard = FormGroup({
    Defaults.devicesToDisableOnLanConnect: FormControl<String>(),
    Defaults.devicesToDisableOnWifiConnect: FormControl<String>(),
    Defaults.devicesToDisableOnWwanConnect: FormControl<String>(),
    Defaults.devicesToEnableOnLanDisconnect: FormControl<String>(),
    Defaults.devicesToEnableOnWifiDisconnect: FormControl<String>(),
    Defaults.devicesToEnableOnWwanDisconnect: FormControl<String>(),
    Defaults.devicesToEnableOnDock: FormControl<String>(),
    Defaults.devicesToDisableOnDock: FormControl<String>(),
    Defaults.devicesToEnableOnUndock: FormControl<String>(),
    Defaults.devicesToDisableOnUndock: FormControl<String>(),
  });

  final _formPower = FormGroup({
    Defaults.runtimePmOnAc: FormControl<String>(),
    Defaults.runtimePmOnBat: FormControl<String>(),
    Defaults.runtimePmDenylist: FormControl<String>(),
    Defaults.runtimePmDriverDenylist: FormControl<String>(),
    Defaults.runtimePmEnable: FormControl<String>(),
    Defaults.runtimePmDisable: FormControl<String>(),
    Defaults.pcieAspmOnAc: FormControl<String>(),
    Defaults.pcieAspmOnBat: FormControl<String>(),
  });

  final _formUsb = FormGroup({
    Defaults.usbAutosuspend: FormControl<String>(),
    Defaults.usbDenylist: FormControl<String>(),
    Defaults.usbExcludeAudio: FormControl<String>(),
    Defaults.usbExcludeBtusb: FormControl<String>(),
    Defaults.usbExcludePhone: FormControl<String>(),
    Defaults.usbExcludePrinter: FormControl<String>(),
    Defaults.usbExcludeWwan: FormControl<String>(),
    Defaults.usbAllowlist: FormControl<String>(),
    Defaults.usbAutosuspendDisableOnShutdown: FormControl<String>(),
  });

  late final _form = FormGroup({
    Defaults.general: _formGeneral,
    Defaults.audio: _formAudio,
    Defaults.battery: _formBattery,
    Defaults.driveBay: _formDriveBay,
    Defaults.disks: _formDisks,
    Defaults.filesystem: _formFilesystem,
    Defaults.graphics: _formGraphics,
    Defaults.kernel: _formKernel,
    Defaults.network: _formNetwork,
    Defaults.platform: _formPlatform,
    Defaults.processor: _formProcessor,
    Defaults.deviceSwitching: _formDeviceSwitching,
    Defaults.deviceWizard: _formDeviceWizard,
    Defaults.power: _formPower,
    Defaults.usb: _formUsb,
  });

  @override
  void initState() {
    super.initState();

    _initSettings();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const _Title(),
        ),
        body: Column(
          children: [
            Expanded(
              child: AutoTabsRouter(
                routes: [
                  GeneralRoute(form: _formGeneral),
                  AudioRoute(form: _formAudio),
                  BatteryRoute(form: _formBattery),
                  DriveRoute(form: _formDriveBay),
                  StorageRoute(
                    formDisks: _formDisks,
                    formFileSystem: _formFilesystem,
                  ),
                  GraphicsRoute(form: _formGraphics),
                  KernelRoute(form: _formKernel),
                  NetworkRoute(form: _formNetwork),
                  PlatformRoute(form: _formPlatform),
                  ProcessorRoute(form: _formProcessor),
                  RadioRoute(
                    formSwitchingRoute: _formDeviceSwitching,
                    formWizardRoute: _formDeviceWizard,
                  ),
                  PowerRoute(form: _formPower),
                  USBRoute(form: _formUsb),
                ],
                transitionBuilder: (context, child, _) {
                  final tabsRouter = AutoTabsRouter.of(context);

                  return Row(
                    children: [
                      NavigationRail(
                        selectedIndex: tabsRouter.activeIndex,
                        extended: true,
                        onDestinationSelected: tabsRouter.setActiveIndex,
                        destinations: [
                          NavigationRailDestination(
                            icon: const Icon(FontAwesomeIcons.gears),
                            selectedIcon: const Icon(FontAwesomeIcons.gears),
                            label: Text(
                                AppLocalizations.of(context)?.title_general ??
                                    'title_general'),
                          ),
                          NavigationRailDestination(
                            icon: const Icon(FontAwesomeIcons.music),
                            selectedIcon: const Icon(FontAwesomeIcons.music),
                            label: Text(
                                AppLocalizations.of(context)?.title_audio ??
                                    'title_audio'),
                          ),
                          NavigationRailDestination(
                            icon: const Icon(FontAwesomeIcons.batteryFull),
                            selectedIcon:
                                const Icon(FontAwesomeIcons.batteryFull),
                            label: Text(
                                AppLocalizations.of(context)?.title_battery ??
                                    'title_battery'),
                          ),
                          NavigationRailDestination(
                            icon: const Icon(FontAwesomeIcons.compactDisc),
                            selectedIcon:
                                const Icon(FontAwesomeIcons.compactDisc),
                            label: Text(
                                AppLocalizations.of(context)?.title_drive_bay ??
                                    'title_drive_bay'),
                          ),
                          NavigationRailDestination(
                            icon: const Icon(FontAwesomeIcons.hardDrive),
                            selectedIcon:
                                const Icon(FontAwesomeIcons.hardDrive),
                            label: Text(
                                AppLocalizations.of(context)?.title_storage ??
                                    'title_storage'),
                          ),
                          NavigationRailDestination(
                            icon: const Icon(FontAwesomeIcons.display),
                            selectedIcon: const Icon(FontAwesomeIcons.display),
                            label: Text(
                                AppLocalizations.of(context)?.title_graphics ??
                                    'title_graphics'),
                          ),
                          NavigationRailDestination(
                            icon: const Icon(FontAwesomeIcons.code),
                            selectedIcon: const Icon(FontAwesomeIcons.code),
                            label: Text(
                                AppLocalizations.of(context)?.title_kernel ??
                                    'title_kernel'),
                          ),
                          NavigationRailDestination(
                            icon: const Icon(FontAwesomeIcons.networkWired),
                            selectedIcon:
                                const Icon(FontAwesomeIcons.networkWired),
                            label: Text(
                                AppLocalizations.of(context)?.title_network ??
                                    'title_network'),
                          ),
                          NavigationRailDestination(
                            icon: const Icon(FontAwesomeIcons.computer),
                            selectedIcon: const Icon(FontAwesomeIcons.computer),
                            label: Text(
                                AppLocalizations.of(context)?.title_platform ??
                                    'title_platform'),
                          ),
                          NavigationRailDestination(
                            icon: const Icon(FontAwesomeIcons.microchip),
                            selectedIcon:
                                const Icon(FontAwesomeIcons.microchip),
                            label: Text(
                                AppLocalizations.of(context)?.title_processor ??
                                    'title_processor'),
                          ),
                          NavigationRailDestination(
                            icon: const Icon(FontAwesomeIcons.wifi),
                            selectedIcon: const Icon(FontAwesomeIcons.wifi),
                            label: Text(
                                AppLocalizations.of(context)?.title_radio ??
                                    'title_radio'),
                          ),
                          NavigationRailDestination(
                            icon: const Icon(FontAwesomeIcons.powerOff),
                            selectedIcon: const Icon(FontAwesomeIcons.powerOff),
                            label: Text(
                                AppLocalizations.of(context)?.title_power ??
                                    'title_power'),
                          ),
                          NavigationRailDestination(
                            icon: const Icon(FontAwesomeIcons.usb),
                            selectedIcon: const Icon(FontAwesomeIcons.usb),
                            label: Text(
                                AppLocalizations.of(context)?.title_usb ??
                                    'title_usb'),
                          ),
                        ],
                      ),
                      Expanded(child: child),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton(
                    onPressed: () => _showResetFieldsDialog(context),
                    child: Text(
                        AppLocalizations.of(context)?.action_reset_fields ??
                            'action_reset_fields'),
                  ),
                  const SizedBox(width: 16.0),
                  ElevatedButton(
                    onPressed: () => _showSaveFileDialog(context),
                    child: Text(
                        AppLocalizations.of(context)?.action_save_settings ??
                            'action_save_settings'),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  void _showResetFieldsDialog(BuildContext context) {
    showAdaptiveDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          AppLocalizations.of(context)?.dialog_title_reset_fields ??
              'title_reset_fields',
        ),
        content: Text(
          AppLocalizations.of(context)?.dialog_message_reset_fields ??
              'message_reset_fields',
        ),
        actions: [
          TextButton(
            onPressed: () => context.maybePop(),
            child: Text(
              AppLocalizations.of(context)?.action_cancel ?? 'action_cancel',
            ),
          ),
          TextButton(
            onPressed: () {
              context.maybePop();
              _initSettings();
            },
            child: Text(
              AppLocalizations.of(context)?.action_reset ?? 'action_reset',
            ),
          ),
        ],
      ),
    );
  }

  void _showSaveFileDialog(BuildContext context) async {
    final path = await FilePicker.platform.saveFile(
      dialogTitle: AppLocalizations.of(context)?.dialog_title_save_settings ??
          'dialog_title_save_settings',
      allowedExtensions: ['conf'],
      initialDirectory: K.defaultFolderPath,
    );

    if (context.mounted && path != null) {
      _saveSettings(context, path: path);
    }
  }

  void _initSettings() {
    for (final nestedForm in _form.controls.values) {
      if (nestedForm is FormGroup) {
        for (final formKey in nestedForm.controls.keys) {
          final control = nestedForm.control(formKey);
          control.value = widget.configuration.value(formKey);
        }
      }
    }
  }

  void _saveSettings(
    BuildContext context, {
    required String path,
  }) {
    final configuration = _form.controls.values.fold<Map<String, String>>({},
        (configuration, nestedForm) {
      if (nestedForm is FormGroup) {
        final nestedConfiguration = nestedForm.controls.keys
            .fold<Map<String, String>>({}, (configuration, formKey) {
          final control =
              nestedForm.control(formKey) as AbstractControl<String>;
          final value = control.value;

          if (value?.isNotEmpty ?? false) {
            configuration[formKey] = control.value!;
          }

          return configuration;
        });

        configuration.addAll(nestedConfiguration);
      }

      return configuration;
    });

    context.read<ConfigurationBloc>().save(configuration, path: path);
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) => BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) => IconButton(
          onPressed: () => context
              .read<ThemeCubit>()
              .setTheme(state.isLight ? ThemeType.dark : ThemeType.light),
          icon: Icon(
            state.isLight ? FontAwesomeIcons.sun : FontAwesomeIcons.moon,
          ),
        ),
      );
}
