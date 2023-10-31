import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class SoundPowerSaveControllerSelector
    extends ReactiveYaruToggleButtons<String> {
  SoundPowerSaveControllerSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              AppLocalizations.of(context)?.label_sound_power_save_controller ??
                  'label_sound_power_save_controller'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_sound_power_save_controller_headline ??
              'label_sound_power_save_controller_headline'),
          children: {
            Text(AppLocalizations.of(context)?.label_power_off ??
                'label_power_off'): 'Y',
            Text(AppLocalizations.of(context)?.label_active ?? 'label_active'):
                'N',
          },
        );
}
