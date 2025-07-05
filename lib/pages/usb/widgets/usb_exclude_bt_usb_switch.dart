import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_switch_list_tile.dart';

class USBExcludeBTUSBSwitch extends ReactiveYaruSwitchListTile<String> {
  USBExcludeBTUSBSwitch(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_usb_exclude_btusb ??
              'label_usb_exclude_btusb'),
          subtitle: Text(context.l10n?.label_usb_exclude_btusb_subtitle ??
              'label_usb_exclude_btusb_subtitle'),
          headline: Text(context.l10n?.label_usb_exclude_btusb_headline ??
              'label_usb_exclude_btusb_headline'),
        );

  @override
  ReactiveFormFieldState<String, bool> createState() =>
      _USBExcludeBTUSBSwitchState();
}

class _USBExcludeBTUSBSwitchState extends ReactiveFormFieldState<String, bool> {
  @override
  ControlValueAccessor<String, bool> selectValueAccessor() =>
      _USBExcludeBTUSBValueAccessor();
}

class _USBExcludeBTUSBValueAccessor extends ControlValueAccessor<String, bool> {
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
