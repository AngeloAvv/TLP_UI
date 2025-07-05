import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class SoundPowerSaveControllerSelector
    extends ReactiveYaruToggleButtons<String> {
  SoundPowerSaveControllerSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_sound_power_save_controller ??
              'label_sound_power_save_controller'),
          headline: Text(
              context.l10n?.label_sound_power_save_controller_headline ??
                  'label_sound_power_save_controller_headline'),
          children: {
            Text(context.l10n?.label_power_off ?? 'label_power_off'): 'Y',
            Text(context.l10n?.label_active ?? 'label_active'): 'N',
          },
        );
}
