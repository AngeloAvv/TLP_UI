import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class CpuEnergyPerfPolicyOnBatSelector
    extends ReactiveYaruToggleButtons<String> {
  CpuEnergyPerfPolicyOnBatSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_cpu_energy_perf_policy_on_battery ??
              'label_cpu_energy_perf_policy_on_battery'),
          headline: Text(
              context.l10n?.label_cpu_energy_perf_policy_on_battery_headline ??
                  'label_cpu_energy_perf_policy_on_battery_headline'),
          subtitle: Text(
              context.l10n?.label_cpu_energy_perf_policy_on_battery_subtitle ??
                  'label_cpu_energy_perf_policy_on_battery_subtitle'),
          children: {
            Text(context.l10n?.label_performance ?? 'label_performance'):
                'performance',
            Text(context.l10n?.label_balanced_performance ??
                'label_balanced_performance'): 'balanced_performance',
            Text(context.l10n?.label_default ?? 'label_default'): 'default',
            Text(context.l10n?.label_balanced_power ?? 'label_balanced_power'):
                'balanced_power',
            Text(context.l10n?.label_power ?? 'label_power'): 'power',
          },
        );
}
