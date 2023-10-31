import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_multi_toggle_buttons.dart';

class DiskAPMClassDenylistSelector
    extends ReactiveYaruMultiToggleButtons<String> {
  DiskAPMClassDenylistSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
            title: Text(
                AppLocalizations.of(context)?.label_disk_apm_class_denylist ??
                    'label_disk_apm_class_denylist'),
            subtitle: Text(AppLocalizations.of(context)
                    ?.label_disk_apm_class_denylist_subtitle ??
                'label_disk_apm_class_denylist_subtitle'),
            headline: Text(AppLocalizations.of(context)
                    ?.label_disk_apm_class_denylist_headline ??
                'label_disk_apm_class_denylist_headline'),
            children: {
              Text(AppLocalizations.of(context)?.label_ata ?? 'label_ata'):
                  'ata',
              Text(AppLocalizations.of(context)?.label_sata ?? 'label_sata'):
                  'sata',
              Text(AppLocalizations.of(context)?.label_usb ?? 'label_usb'):
                  'usb',
              Text(AppLocalizations.of(context)?.label_ieee1394 ??
                  'label_ieee1394'): 'ieee1394',
            });
}
