import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_text_field.dart';

class RuntimePMEnableField extends ReactiveYaruTextField {
  RuntimePMEnableField(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(AppLocalizations.of(context)?.label_runtime_pm_enable ??
              'label_runtime_pm_enable'),
          subtitle: Text(
              AppLocalizations.of(context)?.label_runtime_pm_enable_subtitle ??
                  'label_runtime_pm_enable_subtitle'),
          headline: Text(
              AppLocalizations.of(context)?.label_runtime_pm_enable_headline ??
                  'label_runtime_pm_enable_headline'),
        );
}
