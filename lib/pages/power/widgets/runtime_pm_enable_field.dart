import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_text_field.dart';

class RuntimePMEnableField extends ReactiveYaruTextField {
  RuntimePMEnableField(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_runtime_pm_enable ??
              'label_runtime_pm_enable'),
          subtitle: Text(context.l10n?.label_runtime_pm_enable_subtitle ??
              'label_runtime_pm_enable_subtitle'),
          headline: Text(context.l10n?.label_runtime_pm_enable_headline ??
              'label_runtime_pm_enable_headline'),
        );
}
