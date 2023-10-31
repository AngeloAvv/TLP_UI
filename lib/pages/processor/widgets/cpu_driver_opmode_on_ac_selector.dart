import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class CpuDriverOpmodeOnAcSelector extends ReactiveYaruToggleButtons<String> {
  CpuDriverOpmodeOnAcSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              AppLocalizations.of(context)?.label_cpu_driver_opmode_on_ac ??
                  'label_cpu_driver_opmode_on_ac'),
          headline: Text(AppLocalizations.of(context)
                  ?.label_cpu_driver_opmode_on_ac_headline ??
              'label_cpu_driver_opmode_on_ac_headline'),
          subtitle: Text(AppLocalizations.of(context)
                  ?.label_cpu_driver_opmode_on_ac_subtitle ??
              'label_cpu_driver_opmode_on_ac_subtitle'),
          children: {
            Text(AppLocalizations.of(context)?.label_active ?? 'label_active'):
                'active',
            Text(AppLocalizations.of(context)?.label_passive ??
                'label_passive'): 'passive',
            Text(AppLocalizations.of(context)?.label_guided ?? 'label_guided'):
                'guided',
          },
        );
}
