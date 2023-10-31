import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_text_field.dart';

class DiskDevicesField extends ReactiveYaruTextField {
  DiskDevicesField(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(AppLocalizations.of(context)?.label_disk_devices ??
              'label_disk_devices'),
          subtitle: Text(
              AppLocalizations.of(context)?.label_disk_devices_subtitle ??
                  'label_disk_devices_subtitle'),
          headline: Text(
              AppLocalizations.of(context)?.label_disk_devices_headline ??
                  'label_disk_devices_headline'),
        );
}
