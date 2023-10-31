import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_switch_list_tile.dart';

class WoLDisableSwitch extends ReactiveYaruSwitchListTile<String> {
  WoLDisableSwitch(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(AppLocalizations.of(context)?.label_wol_disable ??
              'label_wol_disable'),
          subtitle: Text(
              AppLocalizations.of(context)?.label_wol_disable_subtitle ??
                  'label_wol_disable_subtitle'),
          headline: Text(
              AppLocalizations.of(context)?.label_wol_disable_headline ??
                  'label_wol_disable_headline'),
        );

  @override
  ReactiveFormFieldState<String, bool> createState() =>
      _WoLDisableSwitchState();
}

class _WoLDisableSwitchState extends ReactiveFormFieldState<String, bool> {
  @override
  ControlValueAccessor<String, bool> selectValueAccessor() =>
      _WoLDisableValueAccessor();
}

class _WoLDisableValueAccessor extends ControlValueAccessor<String, bool> {
  @override
  bool? modelToViewValue(String? modelValue) {
    switch (modelValue) {
      case 'N':
        return false;
      case 'Y':
        return true;
    }
    return null;
  }

  @override
  String? viewToModelValue(bool? viewValue) {
    switch (viewValue) {
      case false:
        return 'N';
      case true:
        return 'Y';
      case null:
        return null;
    }
  }
}
