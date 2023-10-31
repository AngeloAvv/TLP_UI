import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class MemSleepOnAcSelector extends ReactiveYaruToggleButtons<String> {
  MemSleepOnAcSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(AppLocalizations.of(context)?.label_mem_sleep_on_ac ??
              'label_mem_sleep_on_ac'),
          headline: Text(
              AppLocalizations.of(context)?.label_mem_sleep_on_ac_headline ??
                  'label_mem_sleep_on_ac_headline'),
          subtitle: Text(
              AppLocalizations.of(context)?.label_mem_sleep_on_ac_subtitle ??
                  'label_mem_sleep_on_ac_subtitle'),
          children: {
            Text(AppLocalizations.of(context)?.label_idle_standby ??
                'label_idle_standby'): 's2idle',
            Text(AppLocalizations.of(context)?.label_deep ?? 'label_deep'):
                'deep',
          },
        );
}
