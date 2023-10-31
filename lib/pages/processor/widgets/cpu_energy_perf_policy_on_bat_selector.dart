import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class CpuEnergyPerfPolicyOnBatSelector
    extends ReactiveYaruToggleButtons<String> {
  CpuEnergyPerfPolicyOnBatSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(AppLocalizations.of(context)
                  ?.label_cpu_energy_perf_policy_on_battery ??
              'label_cpu_energy_perf_policy_on_battery'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_cpu_energy_perf_policy_on_battery_headline ??
              'label_cpu_energy_perf_policy_on_battery_headline'),
          subtitle: Text(AppLocalizations.of(context)
                  ?.label_cpu_energy_perf_policy_on_battery_subtitle ??
              'label_cpu_energy_perf_policy_on_battery_subtitle'),
          children: {
            Text(AppLocalizations.of(context)?.label_performance ??
                'label_performance'): 'performance',
            Text(AppLocalizations.of(context)?.label_balanced_performance ??
                'label_balanced_performance'): 'balanced_performance',
            Text(AppLocalizations.of(context)?.label_default ??
                'label_default'): 'default',
            Text(AppLocalizations.of(context)?.label_balanced_power ??
                'label_balanced_power'): 'balanced_power',
            Text(AppLocalizations.of(context)?.label_power ?? 'label_power'):
                'power',
          },
        );
}
