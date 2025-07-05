import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_text_field.dart';

class SoundPowerSaveOnAcField extends ReactiveYaruTextField {
  SoundPowerSaveOnAcField(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_sound_power_save_on_ac ??
              'label_sound_power_save_on_ac'),
          subtitle: Text(context.l10n?.label_sound_power_save_on_ac_subtitle ??
              'label_sound_power_save_on_ac_subtitle'),
          headline: Text(context.l10n?.label_sound_power_save_on_ac_headline ??
              'label_sound_power_save_on_ac_headline'),
          dense: true,
        );
}
