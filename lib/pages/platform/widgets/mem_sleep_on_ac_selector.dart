import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class MemSleepOnAcSelector extends ReactiveYaruToggleButtons<String> {
  MemSleepOnAcSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              context.l10n?.label_mem_sleep_on_ac ?? 'label_mem_sleep_on_ac'),
          headline: Text(context.l10n?.label_mem_sleep_on_ac_headline ??
              'label_mem_sleep_on_ac_headline'),
          subtitle: Text(context.l10n?.label_mem_sleep_on_ac_subtitle ??
              'label_mem_sleep_on_ac_subtitle'),
          children: {
            Text(context.l10n?.label_idle_standby ?? 'label_idle_standby'):
                's2idle',
            Text(context.l10n?.label_deep ?? 'label_deep'): 'deep',
          },
        );
}
