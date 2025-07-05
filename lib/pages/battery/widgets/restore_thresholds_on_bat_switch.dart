import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_switch_list_tile.dart';

class RestoreThresholdsOnBatSwitch extends ReactiveYaruSwitchListTile<String> {
  RestoreThresholdsOnBatSwitch(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_restore_thresholds_on_bat ??
              'label_restore_thresholds_on_bat'),
          subtitle: Text(
              context.l10n?.label_restore_thresholds_on_bat_subtitle ??
                  'label_restore_thresholds_on_bat_subtitle'),
          headline: Text(
              context.l10n?.label_restore_thresholds_on_bat_headline ??
                  'label_restore_thresholds_on_bat_headline'),
        );

  @override
  ReactiveFormFieldState<String, bool> createState() =>
      _RestoreThresholdsOnBatSwitchState();
}

class _RestoreThresholdsOnBatSwitchState
    extends ReactiveFormFieldState<String, bool> {
  @override
  ControlValueAccessor<String, bool> selectValueAccessor() =>
      _RestoreThresholdsOnBatValueAccessor();
}

class _RestoreThresholdsOnBatValueAccessor
    extends ControlValueAccessor<String, bool> {
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
