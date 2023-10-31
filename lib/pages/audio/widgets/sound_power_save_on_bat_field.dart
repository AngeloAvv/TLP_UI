import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_text_field.dart';

class SoundPowerSaveOnBatField extends ReactiveYaruTextField {
  SoundPowerSaveOnBatField(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              AppLocalizations.of(context)?.label_sound_power_save_on_battery ??
                  'label_sound_power_save_on_battery'),
          subtitle: Text(AppLocalizations.of(context)
                  ?.label_sound_power_save_on_battery_subtitle ??
              'label_sound_power_save_on_battery_subtitle'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_sound_power_save_on_battery_headline ??
              'label_sound_power_save_on_battery_headline'),
          dense: true,
        );
}
