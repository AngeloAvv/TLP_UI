import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_multi_toggle_buttons.dart';

class SATALinkpwrOnAcSelector extends ReactiveYaruMultiToggleButtons<String> {
  SATALinkpwrOnAcSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_sata_linkpwr_on_ac ??
              'label_sata_linkpwr_on_ac'),
          subtitle: Text(context.l10n?.label_sata_linkpwr_on_ac_subtitle ??
              'label_sata_linkpwr_on_ac_subtitle'),
          headline: Text(context.l10n?.label_sata_linkpwr_on_ac_headline ??
              'label_sata_linkpwr_on_ac_headline'),
          children: {
            Text(context.l10n?.label_max_performance ??
                'label_max_performance'): 'max_performance',
            Text(context.l10n?.label_medium_power ?? 'label_medium_power'):
                'medium_power',
            Text(context.l10n?.label_med_power_with_dipm ??
                'label_med_power_with_dipm'): 'med_power_with_dipm',
            Text(context.l10n?.label_min_power ?? 'label_min_power'):
                'min_power',
          },
        );
}
