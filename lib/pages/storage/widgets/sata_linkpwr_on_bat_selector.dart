import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_multi_toggle_buttons.dart';

class SATALinkpwrOnBatSelector extends ReactiveYaruMultiToggleButtons<String> {
  SATALinkpwrOnBatSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              AppLocalizations.of(context)?.label_sata_linkpwr_on_battery ??
                  'label_sata_linkpwr_on_battery'),
          subtitle: Text(AppLocalizations.of(context)
                  ?.label_sata_linkpwr_on_battery_subtitle ??
              'label_sata_linkpwr_on_battery_subtitle'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_sata_linkpwr_on_battery_headline ??
              'label_sata_linkpwr_on_battery_headline'),
          children: {
            Text(AppLocalizations.of(context)?.label_max_performance ??
                'label_max_performance'): 'max_performance',
            Text(AppLocalizations.of(context)?.label_medium_power ??
                'label_medium_power'): 'medium_power',
            Text(AppLocalizations.of(context)?.label_med_power_with_dipm ??
                'label_med_power_with_dipm'): 'med_power_with_dipm',
            Text(AppLocalizations.of(context)?.label_min_power ??
                'label_min_power'): 'min_power',
          },
        );
}
