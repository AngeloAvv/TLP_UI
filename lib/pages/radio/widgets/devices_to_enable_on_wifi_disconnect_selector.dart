import 'package:flutter/material.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/misc/constants.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_multi_toggle_buttons.dart';

class DevicesToEnableOnWiFiDisconnectSelector
    extends ReactiveYaruMultiToggleButtons<String> {
  DevicesToEnableOnWiFiDisconnectSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(AppLocalizations.of(context)
                  ?.label_devices_to_enable_on_wifi_disconnect ??
              'label_devices_to_enable_on_wifi_disconnect'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_devices_to_enable_on_wifi_disconnect_headline ??
              'label_devices_to_enable_on_wifi_disconnect_headline'),
          subtitle: Text(AppLocalizations.of(context)
                  ?.label_devices_to_enable_on_wifi_disconnect_subtitle ??
              'label_devices_to_enable_on_wifi_disconnect_subtitle'),
          children: {
            Text(AppLocalizations.of(context)?.label_bluetooth ??
                'label_bluetooth'): 'bluetooth',
            Text(AppLocalizations.of(context)?.label_wifi ?? 'label_wifi'):
                'wifi',
            Text(AppLocalizations.of(context)?.label_wwan ?? 'label_wwan'):
                'wwan',
          },
        );

  @override
  ReactiveFormFieldState<String, Set<String>> createState() =>
      _DevicesToEnableOnWiFiDisconnectSelectorState();
}

class _DevicesToEnableOnWiFiDisconnectSelectorState
    extends ReactiveFormFieldState<String, Set<String>> {
  @override
  ControlValueAccessor<String, Set<String>> selectValueAccessor() =>
      _DevicesToEnableOnWiFiDisconnectValueAccessor();
}

class _DevicesToEnableOnWiFiDisconnectValueAccessor
    extends ControlValueAccessor<String, Set<String>> {
  @override
  Set<String>? modelToViewValue(String? modelValue) => modelValue?.let(
      (modelValue) => Set.from(modelValue.split(K.defaultValueSeparator)));

  @override
  String? viewToModelValue(Set<String>? viewValue) =>
      viewValue?.join(K.defaultValueSeparator);
}
