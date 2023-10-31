import 'package:flutter/material.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_slider.dart';

class CpuMaxPerfOnAcSlider extends ReactiveYaruSlider {
  CpuMaxPerfOnAcSlider(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(AppLocalizations.of(context)?.label_cpu_max_perf_on_ac ??
              'label_cpu_max_perf_on_ac'),
          subtitle: Text(
              AppLocalizations.of(context)?.label_cpu_max_perf_on_ac_subtitle ??
                  'label_cpu_max_perf_on_ac_subtitle'),
          headline: Text(
              AppLocalizations.of(context)?.label_cpu_max_perf_on_ac_headline ??
                  'label_cpu_max_perf_on_ac_headline'),
        );

  @override
  ReactiveFormFieldState<String, double> createState() =>
      _CpuMaxPerfOnAcSwitchState();
}

class _CpuMaxPerfOnAcSwitchState
    extends ReactiveFormFieldState<String, double> {
  @override
  ControlValueAccessor<String, double> selectValueAccessor() =>
      _CpuMaxPerfOnAcValueAccessor();
}

class _CpuMaxPerfOnAcValueAccessor
    extends ControlValueAccessor<String, double> {
  @override
  double? modelToViewValue(String? modelValue) =>
      modelValue?.let((value) => double.tryParse(modelValue));

  @override
  String? viewToModelValue(double? viewValue) => viewValue?.toInt().toString();
}
