import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class CpuScalingGovernorOnAcSelector extends ReactiveYaruToggleButtons<String> {
  CpuScalingGovernorOnAcSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_cpu_scaling_governor_on_ac ??
              'label_cpu_scaling_governor_on_ac'),
          headline: Text(
              context.l10n?.label_cpu_scaling_governor_on_ac_headline ??
                  'label_cpu_scaling_governor_on_ac_headline'),
          subtitle: Text(
              context.l10n?.label_cpu_scaling_governor_on_ac_subtitle ??
                  'label_cpu_scaling_governor_on_ac_subtitle'),
          children: {
            Text(context.l10n?.label_conservative ?? 'label_conservative'):
                'conservative',
            Text(context.l10n?.label_ondemand ?? 'label_ondemand'): 'ondemand',
            Text(context.l10n?.label_userspace ?? 'label_userspace'):
                'userspace',
            Text(context.l10n?.label_powersave ?? 'label_powersave'):
                'powersave',
            Text(context.l10n?.label_performance ?? 'label_performance'):
                'performance',
            Text(context.l10n?.label_schedutil ?? 'label_schedutil'):
                'schedutil',
          },
        );
}
