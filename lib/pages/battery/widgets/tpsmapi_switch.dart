import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_switch_list_tile.dart';

class TpsmapiSwitch extends ReactiveYaruSwitchListTile<String> {
  TpsmapiSwitch(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(AppLocalizations.of(context)?.label_tpsmapi_enable ??
              'label_tpsmapi_enable'),
          headline: Text(
              AppLocalizations.of(context)?.label_tpsmapi_enable_headline ??
                  'label_tpsmapi_enable_headline'),
        );

  @override
  ReactiveFormFieldState<String, bool> createState() => _TpsmapiSwitchState();
}

class _TpsmapiSwitchState extends ReactiveFormFieldState<String, bool> {
  @override
  ControlValueAccessor<String, bool> selectValueAccessor() =>
      _TpsmapiValueAccessor();
}

class _TpsmapiValueAccessor extends ControlValueAccessor<String, bool> {
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
