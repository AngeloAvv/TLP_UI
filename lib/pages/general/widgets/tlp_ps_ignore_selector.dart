import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class TLPPSIgnoreSelector extends ReactiveYaruToggleButtons<String> {
  TLPPSIgnoreSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(AppLocalizations.of(context)?.label_tlp_ps_ignore ??
              'label_tlp_ps_ignore'),
          subtitle: Text(
              AppLocalizations.of(context)?.label_tlp_ps_ignore_subtitle ??
                  'label_tlp_ps_ignore_subtitle'),
          headline: Text(
              AppLocalizations.of(context)?.label_tlp_ps_ignore_headline ??
                  'label_tlp_ps_ignore_headline'),
          children: {
            Text(AppLocalizations.of(context)?.label_ac ?? 'label_ac'): 'AC',
            Text(AppLocalizations.of(context)?.label_battery ??
                'label_battery'): 'BAT',
            Text(AppLocalizations.of(context)?.label_usb ?? 'label_usb'): 'USB',
          },
        );
}
