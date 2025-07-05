import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_text_field.dart';

class AHCIRuntimePmTimeoutField extends ReactiveYaruTextField {
  AHCIRuntimePmTimeoutField(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_ahci_runtime_pm_timeout ??
              'label_ahci_runtime_pm_timeout'),
          subtitle: Text(context.l10n?.label_ahci_runtime_pm_timeout_subtitle ??
              'label_ahci_runtime_pm_timeout_subtitle'),
          headline: Text(context.l10n?.label_ahci_runtime_pm_timeout_headline ??
              'label_ahci_runtime_pm_timeout_headline'),
          dense: true,
        );
}
