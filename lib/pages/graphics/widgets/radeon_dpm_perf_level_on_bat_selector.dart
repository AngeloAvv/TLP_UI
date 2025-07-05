import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class RadeonDpmPerfLevelOnBatSelector
    extends ReactiveYaruToggleButtons<String> {
  RadeonDpmPerfLevelOnBatSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_radeon_dpm_perf_level_on_battery ??
              'label_radeon_dpm_perf_level_on_battery'),
          headline: Text(
              context.l10n?.label_radeon_dpm_perf_level_on_battery_headline ??
                  'label_radeon_dpm_perf_level_on_battery_headline'),
          subtitle: Text(
              context.l10n?.label_radeon_dpm_perf_level_on_battery_subtitle ??
                  'label_radeon_dpm_perf_level_on_battery_subtitle'),
          children: {
            Text(context.l10n?.label_auto ?? 'label_auto'): 'auto',
            Text(context.l10n?.label_low ?? 'label_low'): 'low',
            Text(context.l10n?.label_high ?? 'label_high'): 'high',
          },
        );
}
