import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/misc/defaults.dart';
import 'package:tlp_ui/pages/drive/widgets/bay_device_field.dart';
import 'package:tlp_ui/pages/drive/widgets/bay_poweroff_on_ac_switch.dart';
import 'package:tlp_ui/pages/drive/widgets/bay_poweroff_on_bat_switch.dart';

/// Enter the Drive documentation here
@RoutePage()
class DrivePage extends StatelessWidget {
  final FormGroup form;

  /// The constructor of the page.
  const DrivePage({super.key, required this.form});

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
                  context.l10n?.title_drive_bay ?? 'title_drive_bay',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              BayPoweroffOnAcSwitch(
                context,
                formControlName: Defaults.bayPoweroffOnAc,
              ),
              BayPoweroffOnBatSwitch(
                context,
                formControlName: Defaults.bayPoweroffOnBat,
              ),
              BayDeviceField(
                context,
                formControlName: Defaults.bayDevice,
              ),
            ],
          ),
        ),
      );
}
