import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class TLPDefaultModeSelector extends ReactiveYaruToggleButtons<String> {
  TLPDefaultModeSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              context.l10n?.label_tlp_default_mode ?? 'label_tlp_default_mode'),
          subtitle: Text(context.l10n?.label_tlp_default_mode_subtitle ??
              'label_tlp_default_mode_subtitle'),
          headline: Text(context.l10n?.label_tlp_default_mode_headline ??
              'label_tlp_default_mode_headline'),
          children: {
            Text(context.l10n?.label_ac ?? 'label_ac'): 'AC',
            Text(context.l10n?.label_battery ?? 'label_battery'): 'BAT',
          },
        );
}
