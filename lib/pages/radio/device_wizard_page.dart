import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/misc/defaults.dart';
import 'package:tlp_ui/pages/radio/widgets/devices_to_disable_on_dock_selector.dart';
import 'package:tlp_ui/pages/radio/widgets/devices_to_disable_on_lan_connect_selector.dart';
import 'package:tlp_ui/pages/radio/widgets/devices_to_disable_on_undock_selector.dart';
import 'package:tlp_ui/pages/radio/widgets/devices_to_disable_on_wifi_connect_selector.dart';
import 'package:tlp_ui/pages/radio/widgets/devices_to_disable_on_wwan_connect_selector.dart';
import 'package:tlp_ui/pages/radio/widgets/devices_to_enable_on_dock_selector.dart';
import 'package:tlp_ui/pages/radio/widgets/devices_to_enable_on_lan_disconnect_selector.dart';
import 'package:tlp_ui/pages/radio/widgets/devices_to_enable_on_undock_selector.dart';
import 'package:tlp_ui/pages/radio/widgets/devices_to_enable_on_wifi_disconnect_selector.dart';
import 'package:tlp_ui/pages/radio/widgets/devices_to_enable_on_wwan_disconnect_selector.dart';

/// Enter the Radio documentation here
@RoutePage()
class DeviceWizardPage extends StatelessWidget {
  final FormGroup form;

  /// The constructor of the page.
  const DeviceWizardPage({super.key, required this.form});

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
                  AppLocalizations.of(context)?.title_device_wizard ??
                      'title_device_wizard',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              DevicesToDisableOnLANConnectSelector(
                context,
                formControlName: Defaults.devicesToDisableOnLanConnect,
              ),
              DevicesToDisableOnWiFiConnectSelector(
                context,
                formControlName: Defaults.devicesToDisableOnWifiConnect,
              ),
              DevicesToDisableOnWWANConnectSelector(
                context,
                formControlName: Defaults.devicesToDisableOnWwanConnect,
              ),
              DevicesToEnableOnLANDisconnectSelector(
                context,
                formControlName: Defaults.devicesToEnableOnLanDisconnect,
              ),
              DevicesToEnableOnWiFiDisconnectSelector(
                context,
                formControlName: Defaults.devicesToEnableOnWifiDisconnect,
              ),
              DevicesToEnableOnWWANDisconnectSelector(
                context,
                formControlName: Defaults.devicesToEnableOnWwanDisconnect,
              ),
              DevicesToEnableOnDockSelector(
                context,
                formControlName: Defaults.devicesToEnableOnDock,
              ),
              DevicesToDisableOnDockSelector(
                context,
                formControlName: Defaults.devicesToDisableOnDock,
              ),
              DevicesToEnableOnUndockSelector(
                context,
                formControlName: Defaults.devicesToEnableOnUndock,
              ),
              DevicesToDisableOnUndockSelector(
                context,
                formControlName: Defaults.devicesToDisableOnUndock,
              ),
            ],
          ),
        ),
      );
}
