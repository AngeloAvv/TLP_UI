import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_switch_list_tile.dart';

class USBAutosuspendSwitch extends ReactiveYaruSwitchListTile<String> {
  USBAutosuspendSwitch(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              context.l10n?.label_usb_autosuspend ?? 'label_usb_autosuspend'),
          subtitle: Text(context.l10n?.label_usb_autosuspend_subtitle ??
              'label_usb_autosuspend_subtitle'),
          headline: Text(context.l10n?.label_usb_autosuspend_headline ??
              'label_usb_autosuspend_headline'),
        );

  @override
  ReactiveFormFieldState<String, bool> createState() =>
      _USBAutosuspendSwitchState();
}

class _USBAutosuspendSwitchState extends ReactiveFormFieldState<String, bool> {
  @override
  ControlValueAccessor<String, bool> selectValueAccessor() =>
      _USBAutosuspendValueAccessor();
}

class _USBAutosuspendValueAccessor extends ControlValueAccessor<String, bool> {
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
