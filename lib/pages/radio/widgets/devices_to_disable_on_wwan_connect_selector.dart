import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/misc/reactive_forms/field_states/reactive_form_set_field_state.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_multi_toggle_buttons.dart';

class DevicesToDisableOnWWANConnectSelector
    extends ReactiveYaruMultiToggleButtons<String> {
  DevicesToDisableOnWWANConnectSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(AppLocalizations.of(context)
                  ?.label_devices_to_disable_on_wwan_connect ??
              'label_devices_to_disable_on_wwan_connect'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_devices_to_disable_on_wwan_connect_headline ??
              'label_devices_to_disable_on_wwan_connect_headline'),
          subtitle: Text(AppLocalizations.of(context)
                  ?.label_devices_to_disable_on_wwan_connect_subtitle ??
              'label_devices_to_disable_on_wwan_connect_subtitle'),
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
      ReactiveFormSetFieldState();
}
