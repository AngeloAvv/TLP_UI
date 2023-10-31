import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/misc/defaults.dart';
import 'package:tlp_ui/pages/power/widgets/pcie_aspm_on_ac_selector.dart';
import 'package:tlp_ui/pages/power/widgets/pcie_aspm_on_bat_selector.dart';
import 'package:tlp_ui/pages/power/widgets/runtime_pm_denylist_field.dart';
import 'package:tlp_ui/pages/power/widgets/runtime_pm_disable_field.dart';
import 'package:tlp_ui/pages/power/widgets/runtime_pm_driver_denylist_field.dart';
import 'package:tlp_ui/pages/power/widgets/runtime_pm_enable_field.dart';
import 'package:tlp_ui/pages/power/widgets/runtime_pm_on_ac_switch.dart';
import 'package:tlp_ui/pages/power/widgets/runtime_pm_on_bat_switch.dart';

/// Enter the Power documentation here
@RoutePage()
class PowerPage extends StatelessWidget {
  final FormGroup form;

  /// The constructor of the page.
  const PowerPage({super.key, required this.form});

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
                  AppLocalizations.of(context)?.title_power ?? 'title_power',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              RuntimePMOnAcSwitch(
                context,
                formControlName: Defaults.runtimePmOnAc,
              ),
              RuntimePMOnBatSwitch(
                context,
                formControlName: Defaults.runtimePmOnBat,
              ),
              RuntimePMDenylistField(
                context,
                formControlName: Defaults.runtimePmDenylist,
              ),
              RuntimePMDriverDenylistField(
                context,
                formControlName: Defaults.runtimePmDriverDenylist,
              ),
              RuntimePMEnableField(
                context,
                formControlName: Defaults.runtimePmEnable,
              ),
              RuntimePMDisableField(
                context,
                formControlName: Defaults.runtimePmDisable,
              ),
              PciEASPMOnAcSelector(
                context,
                formControlName: Defaults.pcieAspmOnAc,
              ),
              PciEASPMOnBatSelector(
                context,
                formControlName: Defaults.pcieAspmOnBat,
              ),
            ],
          ),
        ),
      );
}
