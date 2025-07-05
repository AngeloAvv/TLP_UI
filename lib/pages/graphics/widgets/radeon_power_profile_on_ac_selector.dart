import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class RadeonPowerProfileOnAcSelector extends ReactiveYaruToggleButtons<String> {
  RadeonPowerProfileOnAcSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_radeon_power_profile_on_ac ??
              'label_radeon_power_profile_on_ac'),
          headline: Text(
              context.l10n?.label_radeon_power_profile_on_ac_headline ??
                  'label_radeon_power_profile_on_ac_headline'),
          subtitle: Text(
              context.l10n?.label_radeon_power_profile_on_ac_subtitle ??
                  'label_radeon_power_profile_on_ac_subtitle'),
          children: {
            Text(context.l10n?.label_low ?? 'label_low'): 'low',
            Text(context.l10n?.label_mid ?? 'label_mid'): 'mid',
            Text(context.l10n?.label_high ?? 'label_high'): 'high',
            Text(context.l10n?.label_auto ?? 'label_auto'): 'auto',
            Text(context.l10n?.label_default ?? 'label_default'): 'default',
          },
        );
}
