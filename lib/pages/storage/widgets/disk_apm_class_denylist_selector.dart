import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_multi_toggle_buttons.dart';

class DiskAPMClassDenylistSelector
    extends ReactiveYaruMultiToggleButtons<String> {
  DiskAPMClassDenylistSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
            title: Text(context.l10n?.label_disk_apm_class_denylist ??
                'label_disk_apm_class_denylist'),
            subtitle: Text(
                context.l10n?.label_disk_apm_class_denylist_subtitle ??
                    'label_disk_apm_class_denylist_subtitle'),
            headline: Text(
                context.l10n?.label_disk_apm_class_denylist_headline ??
                    'label_disk_apm_class_denylist_headline'),
            children: {
              Text(context.l10n?.label_ata ?? 'label_ata'): 'ata',
              Text(context.l10n?.label_sata ?? 'label_sata'): 'sata',
              Text(context.l10n?.label_usb ?? 'label_usb'): 'usb',
              Text(context.l10n?.label_ieee1394 ?? 'label_ieee1394'):
                  'ieee1394',
            });
}
