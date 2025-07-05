import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_text_field.dart';

class RuntimePMDisableField extends ReactiveYaruTextField {
  RuntimePMDisableField(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_runtime_pm_disable ??
              'label_runtime_pm_disable'),
          subtitle: Text(context.l10n?.label_runtime_pm_disable_subtitle ??
              'label_runtime_pm_disable_subtitle'),
          headline: Text(context.l10n?.label_runtime_pm_disable_headline ??
              'label_runtime_pm_disable_headline'),
        );
}
