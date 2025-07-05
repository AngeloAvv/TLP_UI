import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/misc/defaults.dart';
import 'package:tlp_ui/pages/radio/widgets/devices_to_disable_on_bat_not_in_use_selector.dart';
import 'package:tlp_ui/pages/radio/widgets/devices_to_disable_on_bat_selector.dart';
import 'package:tlp_ui/pages/radio/widgets/devices_to_disable_on_shutdown_selector.dart';
import 'package:tlp_ui/pages/radio/widgets/devices_to_disable_on_startup_selector.dart';
import 'package:tlp_ui/pages/radio/widgets/devices_to_enable_on_ac_selector.dart';
import 'package:tlp_ui/pages/radio/widgets/devices_to_enable_on_shutdown_selector.dart';
import 'package:tlp_ui/pages/radio/widgets/devices_to_enable_on_startup_selector.dart';
import 'package:tlp_ui/pages/radio/widgets/restore_device_state_on_startup_switch.dart';

/// Enter the Radio documentation here
@RoutePage()
class DeviceSwitchingPage extends StatelessWidget {
  final FormGroup form;

  /// The constructor of the page.
  const DeviceSwitchingPage({super.key, required this.form});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ReactiveForm(
          formGroup: form,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(16.0),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  context.l10n?.title_device_switching ??
                      'title_device_switching',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              RestoreDeviceStateOnStartupSwitch(
                context,
                formControlName: Defaults.restoreDeviceStateOnStartup,
              ),
              DevicesToDisableOnStartupSelector(
                context,
                formControlName: Defaults.devicesToDisableOnStartup,
              ),
              DevicesToEnableOnStartupSelector(
                context,
                formControlName: Defaults.devicesToEnableOnStartup,
              ),
              DevicesToDisableOnShutdownSelector(
                context,
                formControlName: Defaults.devicesToDisableOnShutdown,
              ),
              DevicesToEnableOnShutdownSelector(
                context,
                formControlName: Defaults.devicesToEnableOnShutdown,
              ),
              DevicesToEnableOnAcSelector(
                context,
                formControlName: Defaults.devicesToEnableOnAc,
              ),
              DevicesToDisableOnBatSelector(
                context,
                formControlName: Defaults.devicesToDisableOnBat,
              ),
              DevicesToDisableOnBatNotInUseSelector(
                context,
                formControlName: Defaults.devicesToDisableOnBatNotInUse,
              ),
            ],
          ),
        ),
      );
}
