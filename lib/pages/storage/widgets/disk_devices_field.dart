import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_text_field.dart';

class DiskDevicesField extends ReactiveYaruTextField {
  DiskDevicesField(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_disk_devices ?? 'label_disk_devices'),
          subtitle: Text(context.l10n?.label_disk_devices_subtitle ??
              'label_disk_devices_subtitle'),
          headline: Text(context.l10n?.label_disk_devices_headline ??
              'label_disk_devices_headline'),
        );
}
