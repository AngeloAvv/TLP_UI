import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class MemSleepOnBatSelector extends ReactiveYaruToggleButtons<String> {
  MemSleepOnBatSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              AppLocalizations.of(context)?.label_mem_sleep_on_battery ??
                  'label_mem_sleep_on_battery'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_mem_sleep_on_battery_headline ??
              'label_mem_sleep_on_battery_headline'),
          subtitle: Text(AppLocalizations.of(context)
                  ?.label_mem_sleep_on_battery_subtitle ??
              'label_mem_sleep_on_battery_subtitle'),
          children: {
            Text(AppLocalizations.of(context)?.label_idle_standby ??
                'label_idle_standby'): 's2idle',
            Text(AppLocalizations.of(context)?.label_deep ?? 'label_deep'):
                'deep',
          },
        );
}
