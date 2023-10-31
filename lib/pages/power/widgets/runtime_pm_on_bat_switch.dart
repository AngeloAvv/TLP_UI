import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_switch_list_tile.dart';

class RuntimePMOnBatSwitch extends ReactiveYaruSwitchListTile<String> {
  RuntimePMOnBatSwitch(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              AppLocalizations.of(context)?.label_runtime_pm_on_battery ??
                  'label_runtime_pm_on_battery'),
          subtitle: Text(AppLocalizations.of(context)
                  ?.label_runtime_pm_on_battery_subtitle ??
              'label_runtime_pm_on_battery_subtitle'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_runtime_pm_on_battery_headline ??
              'label_runtime_pm_on_battery_headline'),
        );

  @override
  ReactiveFormFieldState<String, bool> createState() =>
      _RuntimePMOnBatSwitchState();
}

class _RuntimePMOnBatSwitchState extends ReactiveFormFieldState<String, bool> {
  @override
  ControlValueAccessor<String, bool> selectValueAccessor() =>
      _RuntimePMOnBatValueAccessor();
}

class _RuntimePMOnBatValueAccessor extends ControlValueAccessor<String, bool> {
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
