import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class RadeonDpmStateOnBatSelector extends ReactiveYaruToggleButtons<String> {
  RadeonDpmStateOnBatSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_radeon_dpm_state_on_battery ??
              'label_radeon_dpm_state_on_battery'),
          headline: Text(
              context.l10n?.label_radeon_dpm_state_on_battery_headline ??
                  'label_radeon_dpm_state_on_battery_headline'),
          subtitle: Text(
              context.l10n?.label_radeon_dpm_state_on_battery_subtitle ??
                  'label_radeon_dpm_state_on_battery_subtitle'),
          children: {
            Text(context.l10n?.label_battery ?? 'label_battery'): 'battery',
            Text(context.l10n?.label_balanced ?? 'label_balanced'): 'balanced',
            Text(context.l10n?.label_performance ?? 'label_performance'):
                'performance',
          },
        );
}
