import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_switch_list_tile.dart';

class AHCIRuntimePmOnAcField extends ReactiveYaruSwitchListTile<String> {
  AHCIRuntimePmOnAcField(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_ahci_runtime_pm_on_ac ??
              'label_ahci_runtime_pm_on_ac'),
          subtitle: Text(context.l10n?.label_ahci_runtime_pm_on_ac_subtitle ??
              'label_ahci_runtime_pm_on_ac_subtitle'),
          headline: Text(context.l10n?.label_ahci_runtime_pm_on_ac_headline ??
              'label_ahci_runtime_pm_on_ac_headline'),
        );

  @override
  ReactiveFormFieldState<String, bool> createState() =>
      _AHCIRuntimePmOnAcSwitchState();
}

class _AHCIRuntimePmOnAcSwitchState
    extends ReactiveFormFieldState<String, bool> {
  @override
  ControlValueAccessor<String, bool> selectValueAccessor() =>
      _AHCIRuntimePmOnAcValueAccessor();
}

class _AHCIRuntimePmOnAcValueAccessor
    extends ControlValueAccessor<String, bool> {
  @override
  bool? modelToViewValue(String? modelValue) {
    switch (modelValue) {
      case 'on':
        return false;
      case 'auto':
        return true;
    }
    return null;
  }

  @override
  String? viewToModelValue(bool? viewValue) {
    switch (viewValue) {
      case false:
        return 'on';
      case true:
        return 'auto';
      case null:
        return null;
    }
  }
}
