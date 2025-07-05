import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_text_field.dart';

class BayDeviceField extends ReactiveYaruTextField {
  BayDeviceField(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_bay_device ?? 'label_bay_device'),
          subtitle: Text(context.l10n?.label_bay_device_subtitle ??
              'label_bay_device_subtitle'),
          headline: Text(context.l10n?.label_bay_device_headline ??
              'label_bay_device_headline'),
        );
}
