import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_switch_list_tile.dart';

class WiFiPwrOnBatSwitch extends ReactiveYaruSwitchListTile<String> {
  WiFiPwrOnBatSwitch(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_wifi_pwr_on_battery ??
              'label_wifi_pwr_on_battery'),
          subtitle: Text(context.l10n?.label_wifi_pwr_on_battery_subtitle ??
              'label_wifi_pwr_on_battery_subtitle'),
          headline: Text(context.l10n?.label_wifi_pwr_on_battery_headline ??
              'label_wifi_pwr_on_battery_headline'),
        );

  @override
  ReactiveFormFieldState<String, bool> createState() =>
      _WiFiPwrOnBatSwitchState();
}

class _WiFiPwrOnBatSwitchState extends ReactiveFormFieldState<String, bool> {
  @override
  ControlValueAccessor<String, bool> selectValueAccessor() =>
      _WiFiPwrOnBatValueAccessor();
}

class _WiFiPwrOnBatValueAccessor extends ControlValueAccessor<String, bool> {
  @override
  bool? modelToViewValue(String? modelValue) {
    switch (modelValue) {
      case 'off':
        return false;
      case 'on':
        return true;
    }
    return null;
  }

  @override
  String? viewToModelValue(bool? viewValue) {
    switch (viewValue) {
      case false:
        return 'off';
      case true:
        return 'on';
      case null:
        return null;
    }
  }
}
