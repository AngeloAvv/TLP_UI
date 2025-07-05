import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_multi_toggle_buttons.dart';

class DiskIOSchedSelector extends ReactiveYaruMultiToggleButtons<String> {
  DiskIOSchedSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_disk_iosched ?? 'label_disk_iosched'),
          subtitle: Text(context.l10n?.label_disk_iosched_subtitle ??
              'label_disk_iosched_subtitle'),
          headline: Text(context.l10n?.label_disk_iosched_headline ??
              'label_disk_iosched_headline'),
          children: {
            Text(context.l10n?.label_mq_deadline ?? 'label_mq_deadline'):
                'mq-deadline',
            Text(context.l10n?.label_none ?? 'label_none'): 'none',
            Text(context.l10n?.label_kyber ?? 'label_kyber'): 'kyber',
            Text(context.l10n?.label_cfq ?? 'label_cfq'): 'cfq',
            Text(context.l10n?.label_bfq ?? 'label_bfq'): 'bfq',
            Text(context.l10n?.label_noop ?? 'label_noop'): 'noop',
            Text(context.l10n?.label_keep ?? 'label_keep'): 'keep',
          },
        );
}
