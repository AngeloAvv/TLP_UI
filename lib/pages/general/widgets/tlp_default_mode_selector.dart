import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class TLPDefaultModeSelector extends ReactiveYaruToggleButtons<String> {
  TLPDefaultModeSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(AppLocalizations.of(context)?.label_tlp_default_mode ??
              'label_tlp_default_mode'),
          subtitle: Text(
              AppLocalizations.of(context)?.label_tlp_default_mode_subtitle ??
                  'label_tlp_default_mode_subtitle'),
          headline: Text(
              AppLocalizations.of(context)?.label_tlp_default_mode_headline ??
                  'label_tlp_default_mode_headline'),
          children: {
            Text(AppLocalizations.of(context)?.label_ac ?? 'label_ac'): 'AC',
            Text(AppLocalizations.of(context)?.label_battery ??
                'label_battery'): 'BAT',
          },
        );
}
