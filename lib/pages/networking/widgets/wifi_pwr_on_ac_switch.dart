import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_switch_list_tile.dart';

class WiFiPwrOnAcSwitch extends ReactiveYaruSwitchListTile<String> {
  WiFiPwrOnAcSwitch(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              context.l10n?.label_wifi_pwr_on_ac ?? 'label_wifi_pwr_on_ac'),
          subtitle: Text(context.l10n?.label_wifi_pwr_on_ac_subtitle ??
              'label_wifi_pwr_on_ac_subtitle'),
          headline: Text(context.l10n?.label_wifi_pwr_on_ac_headline ??
              'label_wifi_pwr_on_ac_headline'),
        );

  @override
  ReactiveFormFieldState<String, bool> createState() =>
      _WiFiPwrOnAcSwitchState();
}

class _WiFiPwrOnAcSwitchState extends ReactiveFormFieldState<String, bool> {
  @override
  ControlValueAccessor<String, bool> selectValueAccessor() =>
      _WiFiPwrOnAcValueAccessor();
}

class _WiFiPwrOnAcValueAccessor extends ControlValueAccessor<String, bool> {
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
