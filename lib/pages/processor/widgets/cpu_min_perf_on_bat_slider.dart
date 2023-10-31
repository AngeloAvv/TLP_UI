import 'package:flutter/material.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_slider.dart';

class CpuMinPerfOnBatSlider extends ReactiveYaruSlider {
  CpuMinPerfOnBatSlider(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              AppLocalizations.of(context)?.label_cpu_min_perf_on_battery ??
                  'label_cpu_min_perf_on_battery'),
          subtitle: Text(AppLocalizations.of(context)
                  ?.label_cpu_min_perf_on_battery_subtitle ??
              'label_cpu_min_perf_on_battery_subtitle'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_cpu_min_perf_on_battery_headline ??
              'label_cpu_min_perf_on_battery_headline'),
        );

  @override
  ReactiveFormFieldState<String, double> createState() =>
      _CpuMinPerfOnBatSwitchState();
}

class _CpuMinPerfOnBatSwitchState
    extends ReactiveFormFieldState<String, double> {
  @override
  ControlValueAccessor<String, double> selectValueAccessor() =>
      _CpuMinPerfOnBatValueAccessor();
}

class _CpuMinPerfOnBatValueAccessor
    extends ControlValueAccessor<String, double> {
  @override
  double? modelToViewValue(String? modelValue) =>
      modelValue?.let((value) => double.tryParse(modelValue));

  @override
  String? viewToModelValue(double? viewValue) => viewValue?.toInt().toString();
}
