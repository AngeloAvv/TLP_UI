import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class RadeonDpmPerfLevelOnBatSelector
    extends ReactiveYaruToggleButtons<String> {
  RadeonDpmPerfLevelOnBatSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(AppLocalizations.of(context)
                  ?.label_radeon_dpm_perf_level_on_battery ??
              'label_radeon_dpm_perf_level_on_battery'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_radeon_dpm_perf_level_on_battery_headline ??
              'label_radeon_dpm_perf_level_on_battery_headline'),
          subtitle: Text(AppLocalizations.of(context)
                  ?.label_radeon_dpm_perf_level_on_battery_subtitle ??
              'label_radeon_dpm_perf_level_on_battery_subtitle'),
          children: {
            Text(AppLocalizations.of(context)?.label_auto ?? 'label_auto'):
                'auto',
            Text(AppLocalizations.of(context)?.label_low ?? 'label_low'): 'low',
            Text(AppLocalizations.of(context)?.label_high ?? 'label_high'):
                'high',
          },
        );
}
