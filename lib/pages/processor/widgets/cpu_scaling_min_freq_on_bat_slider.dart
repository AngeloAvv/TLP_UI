import 'package:flutter/material.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_slider.dart';

class CpuScalingMinFreqOnBatSlider extends ReactiveYaruSlider {
  CpuScalingMinFreqOnBatSlider(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_cpu_scaling_min_freq_on_battery ??
              'label_cpu_scaling_min_freq_on_battery'),
          subtitle: Text(
              context.l10n?.label_cpu_scaling_min_freq_on_battery_subtitle ??
                  'label_cpu_scaling_min_freq_on_battery_subtitle'),
          headline: Text(
              context.l10n?.label_cpu_scaling_min_freq_on_battery_headline ??
                  'label_cpu_scaling_min_freq_on_battery_headline'),
          min: 0,
          max: 10000,
        );

  @override
  ReactiveFormFieldState<String, double> createState() =>
      _CpuScalingMinFreqOnBatSwitchState();
}

class _CpuScalingMinFreqOnBatSwitchState
    extends ReactiveFormFieldState<String, double> {
  @override
  ControlValueAccessor<String, double> selectValueAccessor() =>
      _CpuScalingMinFreqOnBatValueAccessor();
}

class _CpuScalingMinFreqOnBatValueAccessor
    extends ControlValueAccessor<String, double> {
  @override
  double? modelToViewValue(String? modelValue) =>
      modelValue?.let((value) => double.tryParse(modelValue));

  @override
  String? viewToModelValue(double? viewValue) => viewValue?.toInt().toString();
}
