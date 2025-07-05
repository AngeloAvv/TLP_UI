import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_text_field.dart';

class MaxLostWorkSecsOnBatField extends ReactiveYaruTextField {
  MaxLostWorkSecsOnBatField(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_max_lost_work_secs_on_battery ??
              'label_max_lost_work_secs_on_battery'),
          subtitle: Text(
              context.l10n?.label_max_lost_work_secs_on_battery_subtitle ??
                  'label_max_lost_work_secs_on_battery_subtitle'),
          headline: Text(
              context.l10n?.label_max_lost_work_secs_on_battery_headline ??
                  'label_max_lost_work_secs_on_battery_headline'),
          dense: true,
        );
}
