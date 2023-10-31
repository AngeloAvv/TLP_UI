import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class PlatformProfileOnBatSelector extends ReactiveYaruToggleButtons<String> {
  PlatformProfileOnBatSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              AppLocalizations.of(context)?.label_platform_profile_on_battery ??
                  'label_platform_profile_on_battery'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_platform_profile_on_battery_headline ??
              'label_platform_profile_on_battery_headline'),
          subtitle: Text(AppLocalizations.of(context)
                  ?.label_platform_profile_on_battery_subtitle ??
              'label_platform_profile_on_battery_subtitle'),
          children: {
            Text(AppLocalizations.of(context)?.label_quiet ?? 'label_quiet'):
                'quiet',
            Text(AppLocalizations.of(context)?.label_cool ?? 'label_cool'):
                'cool',
            Text(AppLocalizations.of(context)?.label_low_power ??
                'label_low_power'): 'low_power',
            Text(AppLocalizations.of(context)?.label_balanced ??
                'label_balanced'): 'balanced',
            Text(AppLocalizations.of(context)?.label_balanced_performance ??
                'label_balanced_performance'): 'balanced_performance',
            Text(AppLocalizations.of(context)?.label_performance ??
                'label_performance'): 'performance',
          },
        );
}
