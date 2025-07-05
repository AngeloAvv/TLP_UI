import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_switch_list_tile.dart';

class NatAPCISwitch extends ReactiveYaruSwitchListTile<String> {
  NatAPCISwitch(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_natacpi ?? 'label_natacpi'),
          headline: Text(
              context.l10n?.label_natacpi_headline ?? 'label_natacpi_headline'),
        );

  @override
  ReactiveFormFieldState<String, bool> createState() => _NatAPCISwitchState();
}

class _NatAPCISwitchState extends ReactiveFormFieldState<String, bool> {
  @override
  ControlValueAccessor<String, bool> selectValueAccessor() =>
      _NatAPCIValueAccessor();
}

class _NatAPCIValueAccessor extends ControlValueAccessor<String, bool> {
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
