import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/misc/defaults.dart';
import 'package:tlp_ui/pages/battery/widgets/natacpi_switch.dart';
import 'package:tlp_ui/pages/battery/widgets/restore_thresholds_on_bat_switch.dart';
import 'package:tlp_ui/pages/battery/widgets/start_charge_thresh_bat_one_slider.dart';
import 'package:tlp_ui/pages/battery/widgets/start_charge_thresh_bat_zero_slider.dart';
import 'package:tlp_ui/pages/battery/widgets/stop_charge_thresh_bat_one_slider.dart';
import 'package:tlp_ui/pages/battery/widgets/stop_charge_thresh_bat_zero_slider.dart';
import 'package:tlp_ui/pages/battery/widgets/tpacpi_switch.dart';
import 'package:tlp_ui/pages/battery/widgets/tpsmapi_switch.dart';

/// Enter the Battery documentation here
@RoutePage()
class BatteryPage extends StatelessWidget {
  final FormGroup form;

  /// The constructor of the page.
  const BatteryPage({
    super.key,
    required this.form,
  });

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
                  context.l10n?.title_battery ?? 'title_battery',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              StartChargeThreshBatZeroSlider(
                context,
                formControlName: Defaults.startChargeThreshBat0,
              ),
              StopChargeThreshBatZeroSlider(
                context,
                formControlName: Defaults.stopChargeThreshBat0,
              ),
              StartChargeThreshBatOneSlider(
                context,
                formControlName: Defaults.startChargeThreshBat1,
              ),
              StopChargeThreshBatOneSlider(
                context,
                formControlName: Defaults.stopChargeThreshBat1,
              ),
              RestoreThresholdsOnBatSwitch(
                context,
                formControlName: Defaults.restoreThresholdsOnBattery,
              ),
              NatAPCISwitch(
                context,
                formControlName: Defaults.natacpiEnable,
              ),
              TpACPISwitch(
                context,
                formControlName: Defaults.tpacpiEnable,
              ),
              TpsmapiSwitch(
                context,
                formControlName: Defaults.tpsmapiEnable,
              ),
            ],
          ),
        ),
      );
}
