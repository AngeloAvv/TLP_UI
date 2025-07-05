import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class TLPPersistentDefaultSelector extends ReactiveYaruToggleButtons<String> {
  TLPPersistentDefaultSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_tlp_persistent_default ??
              'label_tlp_persistent_default'),
          subtitle: Text(context.l10n?.label_tlp_persistent_default_subtitle ??
              'label_tlp_persistent_default_subtitle'),
          headline: Text(context.l10n?.label_tlp_persistent_default_headline ??
              'label_tlp_persistent_default_headline'),
          children: {
            Text(context.l10n?.label_actual_power_source ??
                'label_actual_power_source'): '0',
            Text(context.l10n?.label_always_use_settings ??
                'label_always_use_settings'): '1',
          },
        );
}
