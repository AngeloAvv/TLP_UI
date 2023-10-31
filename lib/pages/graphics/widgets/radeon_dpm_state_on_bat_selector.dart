import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class RadeonDpmStateOnBatSelector extends ReactiveYaruToggleButtons<String> {
  RadeonDpmStateOnBatSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              AppLocalizations.of(context)?.label_radeon_dpm_state_on_battery ??
                  'label_radeon_dpm_state_on_battery'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_radeon_dpm_state_on_battery_headline ??
              'label_radeon_dpm_state_on_battery_headline'),
          subtitle: Text(AppLocalizations.of(context)
                  ?.label_radeon_dpm_state_on_battery_subtitle ??
              'label_radeon_dpm_state_on_battery_subtitle'),
          children: {
            Text(AppLocalizations.of(context)?.label_battery ??
                'label_battery'): 'battery',
            Text(AppLocalizations.of(context)?.label_balanced ??
                'label_balanced'): 'balanced',
            Text(AppLocalizations.of(context)?.label_performance ??
                'label_performance'): 'performance',
          },
        );
}
