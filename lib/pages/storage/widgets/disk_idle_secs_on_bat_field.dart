import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_text_field.dart';

class DiskIdleSecsOnBatField extends ReactiveYaruTextField {
  DiskIdleSecsOnBatField(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              AppLocalizations.of(context)?.label_disk_idle_secs_on_battery ??
                  'label_disk_idle_secs_on_battery'),
          subtitle: Text(AppLocalizations.of(context)
                  ?.label_disk_idle_secs_on_battery_subtitle ??
              'label_disk_idle_secs_on_battery_subtitle'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_disk_idle_secs_on_battery_headline ??
              'label_disk_idle_secs_on_battery_headline'),
          dense: true,
        );
}
