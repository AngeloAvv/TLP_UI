import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class PlatformProfileOnAcSelector extends ReactiveYaruToggleButtons<String> {
  PlatformProfileOnAcSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_platform_profile_on_ac ??
              'label_platform_profile_on_ac'),
          headline: Text(context.l10n?.label_platform_profile_on_ac_headline ??
              'label_platform_profile_on_ac_headline'),
          subtitle: Text(context.l10n?.label_platform_profile_on_ac_subtitle ??
              'label_platform_profile_on_ac_subtitle'),
          children: {
            Text(context.l10n?.label_quiet ?? 'label_quiet'): 'quiet',
            Text(context.l10n?.label_cool ?? 'label_cool'): 'cool',
            Text(context.l10n?.label_low_power ?? 'label_low_power'):
                'low_power',
            Text(context.l10n?.label_balanced ?? 'label_balanced'): 'balanced',
            Text(context.l10n?.label_balanced_performance ??
                'label_balanced_performance'): 'balanced_performance',
            Text(context.l10n?.label_performance ?? 'label_performance'):
                'performance',
          },
        );
}
