import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_switch_list_tile.dart';

class BayPoweroffOnAcSwitch extends ReactiveYaruSwitchListTile<String> {
  BayPoweroffOnAcSwitch(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_bay_poweroff_on_ac ??
              'label_bay_poweroff_on_ac'),
          subtitle: Text(context.l10n?.label_bay_poweroff_on_ac_subtitle ??
              'label_bay_poweroff_on_ac_subtitle'),
          headline: Text(context.l10n?.label_bay_poweroff_on_ac_headline ??
              'label_bay_poweroff_on_ac_headline'),
        );

  @override
  ReactiveFormFieldState<String, bool> createState() =>
      _BayPoweroffOnAcSwitchState();
}

class _BayPoweroffOnAcSwitchState extends ReactiveFormFieldState<String, bool> {
  @override
  ControlValueAccessor<String, bool> selectValueAccessor() =>
      _BayPoweroffOnAcValueAccessor();
}

class _BayPoweroffOnAcValueAccessor extends ControlValueAccessor<String, bool> {
  @override
  bool? modelToViewValue(String? modelValue) {
    switch (modelValue) {
      case '0':
        return false;
      case '1':
        return true;
    }
    return null;
  }

  @override
  String? viewToModelValue(bool? viewValue) {
    switch (viewValue) {
      case false:
        return '0';
      case true:
        return '1';
      case null:
        return null;
    }
  }
}
