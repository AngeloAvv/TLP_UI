import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class PciEASPMOnAcSelector extends ReactiveYaruToggleButtons<String> {
  PciEASPMOnAcSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              context.l10n?.label_pcie_aspm_on_ac ?? 'label_pcie_aspm_on_ac'),
          headline: Text(context.l10n?.label_pcie_aspm_on_ac_headline ??
              'label_pcie_aspm_on_ac_headline'),
          children: {
            Text(context.l10n?.label_default ?? 'label_default'): 'default',
            Text(context.l10n?.label_performance ?? 'label_performance'):
                'performance',
            Text(context.l10n?.label_powersave ?? 'label_powersave'):
                'powersave',
            Text(context.l10n?.label_power_supersave ??
                'label_power_supersave'): 'powersupersave',
          },
        );
}
