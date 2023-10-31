import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_switch_list_tile.dart';

class AHCIRuntimePmOnBatSelector extends ReactiveYaruSwitchListTile<String> {
  AHCIRuntimePmOnBatSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              AppLocalizations.of(context)?.label_ahci_runtime_pm_on_battery ??
                  'label_ahci_runtime_pm_on_battery'),
          subtitle: Text(AppLocalizations.of(context)
                  ?.label_ahci_runtime_pm_on_battery_subtitle ??
              'label_ahci_runtime_pm_on_battery_subtitle'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_ahci_runtime_pm_on_battery_headline ??
              'label_ahci_runtime_pm_on_battery_headline'),
        );

  @override
  ReactiveFormFieldState<String, bool> createState() =>
      _AHCIRuntimePmOnBatSwitchState();
}

class _AHCIRuntimePmOnBatSwitchState
    extends ReactiveFormFieldState<String, bool> {
  @override
  ControlValueAccessor<String, bool> selectValueAccessor() =>
      _AHCIRuntimePmOnBatValueAccessor();
}

class _AHCIRuntimePmOnBatValueAccessor
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
