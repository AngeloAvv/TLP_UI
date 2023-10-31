import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class RadeonPowerProfileOnAcSelector extends ReactiveYaruToggleButtons<String> {
  RadeonPowerProfileOnAcSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              AppLocalizations.of(context)?.label_radeon_power_profile_on_ac ??
                  'label_radeon_power_profile_on_ac'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_radeon_power_profile_on_ac_headline ??
              'label_radeon_power_profile_on_ac_headline'),
          subtitle: Text(AppLocalizations.of(context)
                  ?.label_radeon_power_profile_on_ac_subtitle ??
              'label_radeon_power_profile_on_ac_subtitle'),
          children: {
            Text(AppLocalizations.of(context)?.label_low ?? 'label_low'): 'low',
            Text(AppLocalizations.of(context)?.label_mid ?? 'label_mid'): 'mid',
            Text(AppLocalizations.of(context)?.label_high ?? 'label_high'):
                'high',
            Text(AppLocalizations.of(context)?.label_auto ?? 'label_auto'):
                'auto',
            Text(AppLocalizations.of(context)?.label_default ??
                'label_default'): 'default',
          },
        );
}
