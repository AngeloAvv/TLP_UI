import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/misc/defaults.dart';
import 'package:tlp_ui/pages/networking/widgets/wifi_pwr_on_ac_switch.dart';
import 'package:tlp_ui/pages/networking/widgets/wifi_pwr_on_bat_switch.dart';
import 'package:tlp_ui/pages/networking/widgets/wol_disable_switch.dart';

/// Enter the Network documentation here
@RoutePage()
class NetworkPage extends StatelessWidget {
  final FormGroup form;

  /// The constructor of the page.
  const NetworkPage({super.key, required this.form});

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
                  AppLocalizations.of(context)?.title_network ??
                      'title_network',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              WiFiPwrOnAcSwitch(
                context,
                formControlName: Defaults.wifiPwrOnAc,
              ),
              WiFiPwrOnBatSwitch(
                context,
                formControlName: Defaults.wifiPwrOnBat,
              ),
              WoLDisableSwitch(
                context,
                formControlName: Defaults.wolDisable,
              ),
            ],
          ),
        ),
      );
}
