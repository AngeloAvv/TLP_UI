import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/misc/reactive_forms/field_states/reactive_form_set_field_state.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_multi_toggle_buttons.dart';

class DevicesToEnableOnUndockSelector
    extends ReactiveYaruMultiToggleButtons<String> {
  DevicesToEnableOnUndockSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_devices_to_enable_on_undock ??
              'label_devices_to_enable_on_undock'),
          headline: Text(
              context.l10n?.label_devices_to_enable_on_undock_headline ??
                  'label_devices_to_enable_on_undock_headline'),
          subtitle: Text(
              context.l10n?.label_devices_to_enable_on_undock_subtitle ??
                  'label_devices_to_enable_on_undock_subtitle'),
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
