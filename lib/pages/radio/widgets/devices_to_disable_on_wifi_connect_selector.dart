import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/misc/reactive_forms/field_states/reactive_form_set_field_state.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_multi_toggle_buttons.dart';

class DevicesToDisableOnWiFiConnectSelector
    extends ReactiveYaruMultiToggleButtons<String> {
  DevicesToDisableOnWiFiConnectSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_devices_to_disable_on_wifi_connect ??
              'label_devices_to_disable_on_wifi_connect'),
          headline: Text(
              context.l10n?.label_devices_to_disable_on_wifi_connect_headline ??
                  'label_devices_to_disable_on_wifi_connect_headline'),
          subtitle: Text(
              context.l10n?.label_devices_to_disable_on_wifi_connect_subtitle ??
                  'label_devices_to_disable_on_wifi_connect_subtitle'),
          children: {
            Text(context.l10n?.label_bluetooth ?? 'label_bluetooth'):
                'bluetooth',
            Text(context.l10n?.label_wifi ?? 'label_wifi'): 'wifi',
            Text(context.l10n?.label_wwan ?? 'label_wwan'): 'wwan',
          },
        );

  @override
  ReactiveFormFieldState<String, Set<String>> createState() =>
      ReactiveFormSetFieldState();
}
