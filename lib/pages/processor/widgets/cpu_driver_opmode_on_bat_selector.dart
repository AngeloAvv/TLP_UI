import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class CpuDriverOpmodeOnBatSelector extends ReactiveYaruToggleButtons<String> {
  CpuDriverOpmodeOnBatSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(AppLocalizations.of(context)
                  ?.label_cpu_driver_opmode_on_battery ??
              'label_cpu_driver_opmode_on_battery'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_cpu_driver_opmode_on_battery_headline ??
              'label_cpu_driver_opmode_on_battery_headline'),
          subtitle: Text(AppLocalizations.of(context)
                  ?.label_cpu_driver_opmode_on_battery_subtitle ??
              'label_cpu_driver_opmode_on_battery_subtitle'),
          children: {
            Text(AppLocalizations.of(context)?.label_active ?? 'label_active'):
                'active',
            Text(AppLocalizations.of(context)?.label_passive ??
                'label_passive'): 'passive',
            Text(AppLocalizations.of(context)?.label_guided ?? 'label_guided'):
                'guided',
          },
        );
}
