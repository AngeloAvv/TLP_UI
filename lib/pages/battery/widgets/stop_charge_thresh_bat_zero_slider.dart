import 'package:flutter/material.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_slider.dart';

class StopChargeThreshBatZeroSlider extends ReactiveYaruSlider {
  StopChargeThreshBatZeroSlider(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_stop_charge_thresh_battery_zero ??
              'label_stop_charge_thresh_battery_zero'),
          subtitle: Text(
              context.l10n?.label_stop_charge_thresh_battery_zero_subtitle ??
                  'label_stop_charge_thresh_battery_zero_subtitle'),
          headline: Text(
              context.l10n?.label_stop_charge_thresh_battery_zero_headline ??
                  'label_stop_charge_thresh_battery_zero_headline'),
        );

  @override
  ReactiveFormFieldState<String, double> createState() =>
      _StopChargeThreshBatZeroSwitchState();
}

class _StopChargeThreshBatZeroSwitchState
    extends ReactiveFormFieldState<String, double> {
  @override
  ControlValueAccessor<String, double> selectValueAccessor() =>
      _StopChargeThreshBatZeroValueAccessor();
}

class _StopChargeThreshBatZeroValueAccessor
    extends ControlValueAccessor<String, double> {
  @override
  double? modelToViewValue(String? modelValue) =>
      modelValue?.let((value) => double.tryParse(modelValue));

  @override
  String? viewToModelValue(double? viewValue) => viewValue?.toInt().toString();
}
