import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_text_field.dart';

class AHCIRuntimePmTimeoutField extends ReactiveYaruTextField {
  AHCIRuntimePmTimeoutField(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              AppLocalizations.of(context)?.label_ahci_runtime_pm_timeout ??
                  'label_ahci_runtime_pm_timeout'),
          subtitle: Text(AppLocalizations.of(context)
                  ?.label_ahci_runtime_pm_timeout_subtitle ??
              'label_ahci_runtime_pm_timeout_subtitle'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_ahci_runtime_pm_timeout_headline ??
              'label_ahci_runtime_pm_timeout_headline'),
          dense: true,
        );
}
