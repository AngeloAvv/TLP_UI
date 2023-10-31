import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/misc/reactive_forms/field_states/reactive_form_set_field_state.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_multi_toggle_buttons.dart';

class DevicesToEnableOnShutdownSelector
    extends ReactiveYaruMultiToggleButtons<String> {
  DevicesToEnableOnShutdownSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(AppLocalizations.of(context)
                  ?.label_devices_to_enable_on_shutdown ??
              'label_devices_to_enable_on_shutdown'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_devices_to_enable_on_shutdown_headline ??
              'label_devices_to_enable_on_shutdown_headline'),
          subtitle: Text(AppLocalizations.of(context)
                  ?.label_devices_to_enable_on_shutdown_subtitle ??
              'label_devices_to_enable_on_shutdown_subtitle'),
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