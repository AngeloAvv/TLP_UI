import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class MemSleepOnBatSelector extends ReactiveYaruToggleButtons<String> {
  MemSleepOnBatSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_mem_sleep_on_battery ??
              'label_mem_sleep_on_battery'),
          headline: Text(context.l10n?.label_mem_sleep_on_battery_headline ??
              'label_mem_sleep_on_battery_headline'),
          subtitle: Text(context.l10n?.label_mem_sleep_on_battery_subtitle ??
              'label_mem_sleep_on_battery_subtitle'),
          children: {
            Text(context.l10n?.label_idle_standby ?? 'label_idle_standby'):
                's2idle',
            Text(context.l10n?.label_deep ?? 'label_deep'): 'deep',
          },
        );
}
