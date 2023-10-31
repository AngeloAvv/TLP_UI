import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class PciEASPMOnBatSelector extends ReactiveYaruToggleButtons<String> {
  PciEASPMOnBatSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              AppLocalizations.of(context)?.label_pcie_aspm_on_battery ??
                  'label_pcie_aspm_on_battery'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_pcie_aspm_on_battery_headline ??
              'label_pcie_aspm_on_battery_headline'),
          children: {
            Text(AppLocalizations.of(context)?.label_default ??
                'label_default'): 'default',
            Text(AppLocalizations.of(context)?.label_performance ??
                'label_performance'): 'performance',
            Text(AppLocalizations.of(context)?.label_powersave ??
                'label_powersave'): 'powersave',
            Text(AppLocalizations.of(context)?.label_power_supersave ??
                'label_power_supersave'): 'powersupersave',
          },
        );
}
