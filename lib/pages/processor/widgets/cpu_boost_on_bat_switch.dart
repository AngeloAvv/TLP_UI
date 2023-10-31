import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_switch_list_tile.dart';

class CpuBoostOnBatSwitch extends ReactiveYaruSwitchListTile<String> {
  CpuBoostOnBatSwitch(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              AppLocalizations.of(context)?.label_cpu_boost_on_battery ??
                  'label_cpu_boost_on_battery'),
          subtitle: Text(AppLocalizations.of(context)
                  ?.label_cpu_boost_on_battery_subtitle ??
              'label_cpu_boost_on_battery_subtitle'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_cpu_boost_on_battery_headline ??
              'label_cpu_boost_on_battery_headline'),
        );

  @override
  ReactiveFormFieldState<String, bool> createState() =>
      _CpuBoostOnBatSwitchState();
}

class _CpuBoostOnBatSwitchState extends ReactiveFormFieldState<String, bool> {
  @override
  ControlValueAccessor<String, bool> selectValueAccessor() =>
      _CpuBoostOnBatValueAccessor();
}

class _CpuBoostOnBatValueAccessor extends ControlValueAccessor<String, bool> {
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
