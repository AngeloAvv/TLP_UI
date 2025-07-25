import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_text_field.dart';

class MaxLostWorkSecsOnAcField extends ReactiveYaruTextField {
  MaxLostWorkSecsOnAcField(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_max_lost_work_secs_on_ac ??
              'label_max_lost_work_secs_on_ac'),
          subtitle: Text(
              context.l10n?.label_max_lost_work_secs_on_ac_subtitle ??
                  'label_max_lost_work_secs_on_ac_subtitle'),
          headline: Text(
              context.l10n?.label_max_lost_work_secs_on_ac_headline ??
                  'label_max_lost_work_secs_on_ac_headline'),
          dense: true,
        );
}
