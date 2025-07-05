import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class TLPPSIgnoreSelector extends ReactiveYaruToggleButtons<String> {
  TLPPSIgnoreSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title:
              Text(context.l10n?.label_tlp_ps_ignore ?? 'label_tlp_ps_ignore'),
          subtitle: Text(context.l10n?.label_tlp_ps_ignore_subtitle ??
              'label_tlp_ps_ignore_subtitle'),
          headline: Text(context.l10n?.label_tlp_ps_ignore_headline ??
              'label_tlp_ps_ignore_headline'),
          children: {
            Text(context.l10n?.label_ac ?? 'label_ac'): 'AC',
            Text(context.l10n?.label_battery ?? 'label_battery'): 'BAT',
            Text(context.l10n?.label_usb ?? 'label_usb'): 'USB',
          },
        );
}
