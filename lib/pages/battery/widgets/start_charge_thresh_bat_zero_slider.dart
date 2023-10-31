import 'package:flutter/material.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_slider.dart';

class StartChargeThreshBatZeroSlider extends ReactiveYaruSlider {
  StartChargeThreshBatZeroSlider(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(AppLocalizations.of(context)
                  ?.label_start_charge_thresh_battery_zero ??
              'label_start_charge_thresh_battery_zero'),
          subtitle: Text(AppLocalizations.of(context)
                  ?.label_start_charge_thresh_battery_zero_subtitle ??
              'label_start_charge_thresh_battery_zero_subtitle'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_start_charge_thresh_battery_zero_headline ??
              'label_start_charge_thresh_battery_zero_headline'),
        );

  @override
  ReactiveFormFieldState<String, double> createState() =>
      _StartChargeThreshBatZeroSwitchState();
}

class _StartChargeThreshBatZeroSwitchState
    extends ReactiveFormFieldState<String, double> {
  @override
  ControlValueAccessor<String, double> selectValueAccessor() =>
      _StartChargeThreshBatZeroValueAccessor();
}

class _StartChargeThreshBatZeroValueAccessor
    extends ControlValueAccessor<String, double> {
  @override
  double? modelToViewValue(String? modelValue) =>
      modelValue?.let((value) => double.tryParse(modelValue));

  @override
  String? viewToModelValue(double? viewValue) => viewValue?.toInt().toString();
}
