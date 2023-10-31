import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class CpuScalingGovernorOnAcSelector extends ReactiveYaruToggleButtons<String> {
  CpuScalingGovernorOnAcSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              AppLocalizations.of(context)?.label_cpu_scaling_governor_on_ac ??
                  'label_cpu_scaling_governor_on_ac'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_cpu_scaling_governor_on_ac_headline ??
              'label_cpu_scaling_governor_on_ac_headline'),
          subtitle: Text(AppLocalizations.of(context)
                  ?.label_cpu_scaling_governor_on_ac_subtitle ??
              'label_cpu_scaling_governor_on_ac_subtitle'),
          children: {
            Text(AppLocalizations.of(context)?.label_conservative ??
                'label_conservative'): 'conservative',
            Text(AppLocalizations.of(context)?.label_ondemand ??
                'label_ondemand'): 'ondemand',
            Text(AppLocalizations.of(context)?.label_userspace ??
                'label_userspace'): 'userspace',
            Text(AppLocalizations.of(context)?.label_powersave ??
                'label_powersave'): 'powersave',
            Text(AppLocalizations.of(context)?.label_performance ??
                'label_performance'): 'performance',
            Text(AppLocalizations.of(context)?.label_schedutil ??
                'label_schedutil'): 'schedutil',
          },
        );
}
