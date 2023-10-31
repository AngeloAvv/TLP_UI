import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_multi_toggle_buttons.dart';

class DiskIOSchedSelector extends ReactiveYaruMultiToggleButtons<String> {
  DiskIOSchedSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(AppLocalizations.of(context)?.label_disk_iosched ??
              'label_disk_iosched'),
          subtitle: Text(
              AppLocalizations.of(context)?.label_disk_iosched_subtitle ??
                  'label_disk_iosched_subtitle'),
          headline: Text(
              AppLocalizations.of(context)?.label_disk_iosched_headline ??
                  'label_disk_iosched_headline'),
          children: {
            Text(AppLocalizations.of(context)?.label_mq_deadline ??
                'label_mq_deadline'): 'mq-deadline',
            Text(AppLocalizations.of(context)?.label_none ?? 'label_none'):
                'none',
            Text(AppLocalizations.of(context)?.label_kyber ?? 'label_kyber'):
                'kyber',
            Text(AppLocalizations.of(context)?.label_cfq ?? 'label_cfq'): 'cfq',
            Text(AppLocalizations.of(context)?.label_bfq ?? 'label_bfq'): 'bfq',
            Text(AppLocalizations.of(context)?.label_noop ?? 'label_noop'):
                'noop',
            Text(AppLocalizations.of(context)?.label_keep ?? 'label_keep'):
                'keep',
          },
        );
}
