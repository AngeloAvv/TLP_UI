import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class CpuDriverOpmodeOnBatSelector extends ReactiveYaruToggleButtons<String> {
  CpuDriverOpmodeOnBatSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_cpu_driver_opmode_on_battery ??
              'label_cpu_driver_opmode_on_battery'),
          headline: Text(
              context.l10n?.label_cpu_driver_opmode_on_battery_headline ??
                  'label_cpu_driver_opmode_on_battery_headline'),
          subtitle: Text(
              context.l10n?.label_cpu_driver_opmode_on_battery_subtitle ??
                  'label_cpu_driver_opmode_on_battery_subtitle'),
          children: {
            Text(context.l10n?.label_active ?? 'label_active'): 'active',
            Text(context.l10n?.label_passive ?? 'label_passive'): 'passive',
            Text(context.l10n?.label_guided ?? 'label_guided'): 'guided',
          },
        );
}
